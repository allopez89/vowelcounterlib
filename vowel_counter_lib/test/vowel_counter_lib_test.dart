import 'package:vowel_counter_lib/vowel_counter_lib.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final vowel = Vowel();

    test('Empty string return {}', () {
      expect(vowel.vowelCount(""), equals({}));
    });
    test('INS-368 returns case insetive map', () {
      expect(vowel.vowelCount("INS-368"), equals({"i": 1}));
    });
    test('Function doesnt count symbols', () {
      expect(
          vowel.vowelCount("hola@mundo.com"), equals({"o": 3, "a": 1, "u": 1}));
    });
    test('Numbers return {}', () {
      expect(vowel.vowelCount("024821858"), equals({}));
    });
    test('Symbols and case doesn affect map', () {
      expect(vowel.vowelCount("murcielago x MURCIELAGO = mUrciElagO cuadrado"),
          equals({"u": 4, "i": 3, "e": 3, "a": 5, "o": 4}));
    });
  });
}
