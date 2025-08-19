import 'package:plain/plain.dart';
import 'package:test/test.dart';

void main() {
  group('PlainNumExtensions', () {
    test('sqrt returns correct square root', () {
      expect(16.sqrt, equals(4));
      expect(2.25.sqrt, closeTo(1.5, 0.0001));
    });

    test('pow returns correct power', () {
      expect(2.pow(3), equals(8));
      expect(5.pow(0), equals(1));
    });



    // Add more tests for other methods if present
  });
}
