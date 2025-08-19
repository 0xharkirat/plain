import 'package:plain/src/plain_string.dart';
import 'package:test/test.dart';

void main() {
  group('PlainStringExtensions', () {
    group('reverse', () {
      test('reverses a normal string', () {
        expect('hello'.reverse, equals('olleh'));
      });

      test('reverses an empty string', () {
        expect(''.reverse, equals(''));
      });

      test('reverses a palindrome', () {
        expect('madam'.reverse, equals('madam'));
      });

      test('reverses a string with spaces', () {
        expect('abc def'.reverse, equals('fed cba'));
      });

      test('reverses a string with unicode characters', () {
        expect('😀👍'.reverse, equals('👍😀'));
      });
    });

    group('lines', () {
      test('splits string into lines', () {
        expect('a\nb\nc'.lines, equals(['a', 'b', 'c']));
      });

      test('single line returns single element list', () {
        expect('abc'.lines, equals(['abc']));
      });

      test('empty string returns list with empty string', () {
        expect(''.lines, equals(['']));
      });
    });

    group('capitalize', () {
      test('capitalizes first letter and lowercases rest', () {
        expect('hello'.capitalize, equals('Hello'));
        expect('hELLO'.capitalize, equals('Hello'));
      });

      test('empty string returns empty string', () {
        expect(''.capitalize, equals(''));
      });

      test('single character', () {
        expect('a'.capitalize, equals('A'));
        expect('A'.capitalize, equals('A'));
      });
    });

    group('swapcase', () {
      test('swaps case for all letters', () {
        expect('Hello'.swapcase, equals('hELLO'));
        expect('hELLO'.swapcase, equals('Hello'));
      });

      test('empty string returns empty string', () {
        expect(''.swapcase, equals(''));
      });

      test('non-alphabetic characters remain unchanged', () {
        expect('123!'.swapcase, equals('123!'));
      });
    });

    group('casecmp', () {
      test('returns true for equal strings (case insensitive)', () {
        expect('Hello'.casecmp('hello'), isTrue);
        expect('HELLO'.casecmp('hello'), isTrue);
      });

      test('returns false for different strings', () {
        expect('Hello'.casecmp('world'), isFalse);
      });

      test('returns true for equal strings (case sensitive)', () {
        expect('Hello'.casecmp('Hello', caseSensitive: true), isTrue);
      });

      test('returns false for different case (case sensitive)', () {
        expect('Hello'.casecmp('hello', caseSensitive: true), isFalse);
      });
    });

    group('insert', () {
      test('inserts string at given index', () {
        expect('abcd'.insert(2, 'XY'), equals('abXYcd'));
      });

      test('inserts at start', () {
        expect('abcd'.insert(0, 'XY'), equals('XYabcd'));
      });

      test('inserts at end', () {
        expect('abcd'.insert(4, 'XY'), equals('abcdXY'));
      });

      test('throws RangeError for negative index', () {
        expect(() => 'abcd'.insert(-1, 'XY'), throwsRangeError);
      });

      test('throws RangeError for index greater than length', () {
        expect(() => 'abcd'.insert(5, 'XY'), throwsRangeError);
      });
    });
  });
}
