import 'package:pleasant/pleasant.dart';
import 'package:test/test.dart';

void main() {
  group('PleasantIterableExtensions', () {
    group('min', () {
      test('returns smallest element', () {
        expect([3, 1, 2].min, equals(1));
      });

      test('throws on empty iterable', () {
        expect(() => <int>[].min, throwsStateError);
      });
    });

    group('max', () {
      test('returns largest element', () {
        expect([3, 1, 2].max, equals(3));
      });

      test('throws on empty iterable', () {
        expect(() => <int>[].max, throwsStateError);
      });
    });

    group('minOrNull', () {
      test('returns smallest element', () {
        expect([3, 1, 2].minOrNull, equals(1));
      });

      test('returns null on empty iterable', () {
        expect(<int>[].minOrNull, isNull);
      });
    });

    group('maxOrNull', () {
      test('returns largest element', () {
        expect([3, 1, 2].maxOrNull, equals(3));
      });

      test('returns null on empty iterable', () {
        expect(<int>[].maxOrNull, isNull);
      });
    });

    group('sorted', () {
      test('sorts ascending by default', () {
        expect([3, 1, 2].sorted(), equals([1, 2, 3]));
      });

      test('sorts descending when desc is true', () {
        expect([3, 1, 2].sorted(desc: true), equals([3, 2, 1]));
      });

      test('returns empty list for empty iterable', () {
        expect(<int>[].sorted(), equals([]));
      });
    });

    group('sortedBy', () {
      test('sorts by key ascending', () {
        final data = ['apple', 'pear', 'banana'];
        expect(
          data.sortedBy((e) => e.length),
          equals(['pear', 'apple', 'banana']),
        );
      });

      test('sorts by key descending', () {
        final data = ['apple', 'pear', 'banana'];
        expect(
          data.sortedBy((e) => e.length, desc: true),
          equals(['banana', 'apple', 'pear']),
        );
      });
    });

    group('sortedWith', () {
      test('sorts with custom comparator', () {
        final data = ['apple', 'pear', 'banana'];
        // Sort by last character
        expect(
          data.sortedWith((a, b) => a[a.length - 1].compareTo(b[b.length - 1])),
          equals(['banana', 'apple', 'pear']),
        );
      });
    });

    group('rsorted', () {
      test('sorts descending', () {
        expect([3, 1, 2].rsorted(), equals([3, 2, 1]));
      });
    });

    group('forEachReversed', () {
      test('iterates over a List in reverse order', () {
        final items = [1, 2, 3, 4];
        final result = <int>[];
        items.forEachReversed((element) {
          result.add(element);
        });
        expect(result, equals([4, 3, 2, 1]));
      });

      test('iterates over a Set in reverse order', () {
        final items = {1, 2, 3};
        final result = <int>[];
        items.forEachReversed((element) {
          result.add(element);
        });
        // Set order is not guaranteed, but reversed should match toList().reversed
        expect(result, equals(items.toList().reversed.toList()));
      });

      test('does nothing for empty iterable', () {
        final items = <int>[];
        var called = false;
        items.forEachReversed((_) {
          called = true;
        });
        expect(called, isFalse);
      });
    });

    group('sample', () {
      test('returns a random element from a non-empty iterable', () {
        final items = [10, 20, 30, 40];
        final sample = items.sample;
        expect(items.contains(sample), isTrue);
      });

      test('throws StateError on empty iterable', () {
        final items = <int>[];
        expect(() => items.sample, throwsStateError);
      });

      test('returns the only element if iterable has one item', () {
        final items = [42];
        expect(items.sample, equals(42));
      });
    });
  });
}
