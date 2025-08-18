import 'package:ruby/ruby.dart';
import 'package:test/test.dart';

void main() {
  group('Date extension on DateTime', () {
    test('now returns current DateTime', () {
      final now = DateTime.now();
      final extNow = Date.now;
      // Allow for slight time difference
      expect(extNow.year, equals(now.year));
      expect(extNow.month, equals(now.month));
      expect(extNow.day, equals(now.day));
    });

    test('today returns today\'s date at midnight', () {
      final today = Date.today;
      final now = DateTime.now();
      expect(today.year, equals(now.year));
      expect(today.month, equals(now.month));
      expect(today.day, equals(now.day));
      expect(today.hour, equals(0));
      expect(today.minute, equals(0));
      expect(today.second, equals(0));
    });

    test('isToday returns true for today', () {
      expect(DateTime.now().isToday, isTrue);
      expect(DateTime.now().subtract(Duration(days: 1)).isToday, isFalse);
    });

    test('isTomorrow returns true for tomorrow', () {
      expect(DateTime.now().add(Duration(days: 1)).isTomorrow, isTrue);
      expect(DateTime.now().isTomorrow, isFalse);
    });

    test('isYesterday returns true for yesterday', () {
      expect(DateTime.now().subtract(Duration(days: 1)).isYesterday, isTrue);
      expect(DateTime.now().isYesterday, isFalse);
    });

    group('isLeapYear', () {
      test('returns true for leap years', () {
        expect(DateTime(2020).isLeapYear, isTrue);
        expect(DateTime(2000).isLeapYear, isTrue);
      });

      test('returns false for non-leap years', () {
        expect(DateTime(2021).isLeapYear, isFalse);
        expect(DateTime(1900).isLeapYear, isFalse);
      });
    });
  });
}
