import 'package:ruby/ruby.dart';
import 'package:test/test.dart';

void main() {
  group('RubyDateTimeExtensions', () {
    test('today returns current date', () {
      final dtoday = DateTime.now();
      final rubyToday = today;
      expect(rubyToday.year, equals(today.year));
      expect(rubyToday.month, equals(today.month));
      expect(rubyToday.day, equals(today.day));
    });

    test('isLeapYear returns true for leap year', () {
      expect(DateTime(2020).isLeapYear, isTrue);
    });

    test('isLeapYear returns false for non-leap year', () {
      expect(DateTime(2021).isLeapYear, isFalse);
    });

    // Add more tests for other methods if present
  });
}
