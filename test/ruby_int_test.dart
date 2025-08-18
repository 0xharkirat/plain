import 'package:ruby/ruby.dart';
import 'package:test/test.dart';

void main() {
  group('RubyIntExtensions', () {
    group('times', () {
      test('calls function correct number of times', () {
        int callCount = 0;
        5.times(doThis: (_) {
          callCount++;
        });
        expect(callCount, 5);
      });

      test('passes correct index', () {
        final indices = <int>[];
        3.times(doThis: (i) {
          indices.add(i);
        });
        expect(indices, [0, 1, 2]);
      });

      test('does nothing if callback is null', () {
        expect(() => 2.times(), returnsNormally);
      });
    });

    group('range', () {
      test('iterates from start to end with default step', () {
        final numbers = <int>[];
        final iterations = <int>[];
        2.range(5, doThis: (number, iteration) {
          numbers.add(number);
          iterations.add(iteration);
        });
        expect(numbers, [2, 3, 4, 5]);
        expect(iterations, [0, 1, 2, 3]);
      });

      test('iterates from start to end with custom positive step', () {
        final numbers = <int>[];
        1.range(5, doThis: (number, _) {
          numbers.add(number);
        }, step: 2);
        expect(numbers, [1, 3, 5]);
      });

      test('iterates from start to end with custom negative step', () {
        final numbers = <int>[];
        5.range(1, doThis: (number, _) {
          numbers.add(number);
        }, step: -2);
        expect(numbers, [5, 3, 1]);
      });

      test('throws ArgumentError if step is zero', () {
        expect(() => 1.range(5, doThis: (_, __) {}, step: 0), throwsArgumentError);
      });

      test('does nothing if callback is null', () {
        expect(() => 1.range(3), returnsNormally);
      });
    });

    group('seconds', () {
      test('returns Duration in seconds', () {
        expect(5.seconds, equals(Duration(seconds: 5)));
      });
    });

    group('minutes', () {
      test('returns Duration in minutes', () {
        expect(2.minutes, equals(Duration(minutes: 2)));
      });
    });

    group('hours', () {
      test('returns Duration in hours', () {
        expect(1.hours, equals(Duration(hours: 1)));
      });
    });

    group('days', () {
      test('returns Duration in days', () {
        expect(3.days, equals(Duration(days: 3)));
      });
    });

    group('ms', () {
      test('returns Duration in milliseconds', () {
        expect(150.ms, equals(Duration(milliseconds: 150)));
      });
    });

    group('us', () {
      test('returns Duration in microseconds', () {
        expect(200.us, equals(Duration(microseconds: 200)));
      });
    });

    group('year', () {
      test('returns DateTime for January 1st of the year', () {
        expect(2020.year, equals(DateTime(2020)));
      });
    });

    group('factorial', () {
      test('returns factorial for positive integer', () {
        expect(5.factorial, equals(120));
        expect(0.factorial, equals(1));
        expect(1.factorial, equals(1));
      });

      test('throws ArgumentError for negative integer', () {
        expect(() => (-3).factorial, throwsArgumentError);
         });
    });
  });
}
