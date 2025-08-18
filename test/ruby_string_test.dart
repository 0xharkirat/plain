import 'package:ruby/src/ruby_string.dart';
import 'package:test/test.dart';

void main() {
  group('RubyStringExtensions', () {
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


  });


}


