import 'package:pleasant/pleasant.dart';
import 'package:test/test.dart';

void main() {
  group('PleasantDurationExtensions', () {
    test('ago returns DateTime this duration ago', () {
      final now = DateTime.now();
      final dt = 3.minutes.ago;
      final diff = now.difference(dt).inSeconds;
      expect(dt.isBefore(now), isTrue);
      // TODO: improve this
      expect(
        diff,
        inInclusiveRange(179, 181),
      ); // 3 minutes = 180 seconds, allow ±1s
    });

    test('fromNow returns DateTime this duration from now', () {
      final now = DateTime.now();
      final dt = 5.seconds.fromNow;
      final diff = dt.difference(now).inSeconds;
      // TODO: improve this
      expect(diff, inInclusiveRange(4, 6)); // allow ±1s
    });
  });
}
