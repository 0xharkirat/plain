import 'package:ruby/ruby.dart';
import 'package:test/test.dart';

void main() {
  
  group('IntTimes extension', () {
    test('times calls function correct number of times', () {
      int callCount = 0;
      5.times(
        doThis: (_) {
          callCount++;
        },
      );
      expect(callCount, 5);
    });

    test('times passes correct index', () {
      final indices = <int>[];
      3.times(
        doThis: (i) {
          indices.add(i);
        },
      );
      expect(indices, [0, 1, 2]);
    });

    test('times with null callback does nothing', () {
      // Should not throw or do anything
      expect(() => 2.times(), returnsNormally);
    });
  });
}
