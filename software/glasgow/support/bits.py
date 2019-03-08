import sys
import types
import unittest
from collections import OrderedDict
from bitarray import bitarray

__all__ = ["Bitfield"]

class _Bitfield:
    @classmethod
    def _build_fields(cls, size_bits, fields):
        total_width = sum(width for name, width in fields)
        if total_width > size_bits:
            raise ValueError("field widths exceed declared bit size (%d > %d)" % (total_width, size_bits))
        elif total_width < size_bits:
            fields = fields + [(None, size_bits - total_width)]

        cls._size_bits = size_bits
        cls._size_bytes = (size_bits + 7) // 8
        cls._named_fields = []
        cls._widths = OrderedDict()

        bit = 0
        for name, width in fields:
            if name is None:
                name = "_padding_%d" % bit
            else:
                cls._named_fields.append(name)

            cls._create_field(name, bit, width)
            bit += width

    @classmethod
    def _create_field(cls, name, start, width):
        cls._widths[name] = width
        end = start + width
        num_bytes = (width + 7) // 8
        max_int = (1 << width) - 1

        @property
        def getter(self):
            return int.from_bytes(self._bits[start:end].tobytes(), "little")

        @getter.setter
        def setter(self, value):
            if isinstance(value, bitarray):
                assert value.length() == width
                self._bits[start:end] = b
            else:
                if value > max_int:
                    raise OverflowError("int too big to fit in %d bits" % width)
                b = bitarray(endian="little")
                b.frombytes(value.to_bytes(num_bytes, "little"))
                self._bits[start:end] = b[:width]

        setattr(cls, name, setter)

    @classmethod
    def from_int(cls, data):
        if data >= (1 << cls._size_bits):
            raise OverflowError("int too big to fit in %d bits" % cls._size_bits)
        return cls.from_bytes(data.to_bytes(cls._size_bytes, "little"))

    @classmethod
    def from_bytearray(cls, data):
        return cls.from_bytes(bytes(data))

    @classmethod
    def from_bytes(cls, data):
        if len(data) != cls._size_bytes:
            raise ValueError("need %d bytes to fill BitArray" % cls._size_bytes)
        b = bitarray(endian="little")
        b.frombytes(data)
        return cls.from_bitarray(b[:cls._size_bits])

    @classmethod
    def from_bitarray(cls, data):
        assert data.length() == cls._size_bits
        assert data.endian() == "little"
        pack = cls()
        pack._bits = bitarray(data, endian="little")
        return pack

    def __init__(self, *args, **kwargs):
        self._bits = bitarray(self._size_bits, endian="little")
        self._bits[:] = 0

        if len(args) > len(self._named_fields):
            raise ValueError("too many arguments for field count (%d > %d)" % (len(args), len(self._named_fields)))

        for i, v in enumerate(args):
            setattr(self, self._named_fields[i], v)

        for k,v in kwargs.values():
            if k not in self._widths:
                raise ValueError("unknown field name %s" % k)
            setattr(self, k, v)

    def to_bitarray(self):
        return bitarray(self._bits, endian="little")

    def to_bytes(self):
        return self._bits.tobytes()

    def to_bytearray(self):
        return bytearray(self.to_bytes())

    def to_int(self):
        return int.from_bytes(self.to_bytes(), "little")

    def copy(self):
        return self.__class__.from_bitarray(self._bits)

    def bits_repr(self, omit_zero=False, omit_padding=True):
        fields = []
        if omit_padding:
            names = self._named_fields
        else:
            names = self._widths.keys()

        for name in names:
            width = self._widths[name]
            value = getattr(self, name)
            if omit_zero and not f_value:
                continue

            fields.append("{}={:0{}b}".format(name, value, width))

        return " ".join(fields)

    def __repr__(self):
        return "<{}.{} {}>".format(self.__module__, self.__class__.__name__, self.bits_repr())

    def __eq__(self, other):
        return self._bits[:] == other._bits[:]

    def __ne__(self, other):
        return self._bits[:] != other._bits[:]

def Bitfield(name, size_bytes, fields):
    mod = sys._getframe(1).f_globals["__name__"] # see namedtuple()
    size_bits = size_bytes * 8

    cls = types.new_class(name, (_Bitfield,))
    cls.__module__ = mod
    cls._build_fields(size_bits, fields)

    return cls

# -------------------------------------------------------------------------------------------------

class BitfieldTestCase(unittest.TestCase):
    def test_definition(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        self.assertEqual(bf.__name__, "bf")
        self.assertEqual(bf.__module__, __name__)
        x = bf(1, 2)
        self.assertEqual(x.a, 1)
        self.assertEqual(x.b, 2)

    def test_large(self):
        bf = Bitfield("bf", 9, [(None, 8), ("a", 64)])
        val = (3 << 62) + 1
        x = bf(val)
        self.assertEqual(x.to_int(), val << 8)

    def test_huge(self):
        bf = Bitfield("bf", 260, [("e", 32), ("m", 2048)])
        x = bf(65537, (30<<2048) // 31)
        self.assertEqual(x.e, 65537)
        self.assertEqual(x.m, (30<<2048) // 31)

    def test_reserved(self):
        bf = Bitfield("bf", 8, [(None, 1), ("a", 1)])
        x = bf(1)
        self.assertEqual(repr(x), "<%s.bf a=1>" % __name__)

    def test_bytes(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        x = bf(1, 2)
        self.assertIsInstance(x.to_bytes(), bytes)
        self.assertEqual(x.to_bytes(), b"\x11\x00")
        self.assertEqual(bf.from_bytes(x.to_bytes()), x)

    def test_bytearray(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        x = bf(1, 2)
        self.assertIsInstance(x.to_bytearray(), bytearray)
        self.assertEqual(x.to_bytearray(), bytearray(b"\x11\x00"))
        self.assertEqual(bf.from_bytearray(x.to_bytearray()), x)

    def test_int(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        x = bf(1, 2)
        self.assertIsInstance(x.to_int(), int)
        self.assertEqual(x.to_int(), 17)
        self.assertEqual(bf.from_int(x.to_int()), x)

    def test_bitaray(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        x = bf(1, 2)
        self.assertIsInstance(x.to_bitarray(), bitarray)
        self.assertEqual(x.to_bitarray().endian(), "little")
        self.assertEqual(x.to_bitarray(), bitarray(b"1000100000000000", endian="little"))
        self.assertEqual(bf.from_bitarray(x.to_bitarray()), x)

    def test_repr(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        x = bf(1, 2)
        self.assertEqual(repr(x), "<%s.bf a=001 b=00010>" % __name__)

    def test_copy(self):
        bf = Bitfield("bf", 2, [("a", 3), ("b", 5)])
        x1 = bf(1, 2)
        x2 = x1.copy()
        self.assertFalse(x1 is x2)
        self.assertEqual(x1, x2)
