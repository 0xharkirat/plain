
# plain

**PLAIN: Practical Lightweight Additions for Idiomatic Natural code**

`plain` is a Dart package inspired by the elegance and human-centric philosophy of Ruby, as discussed by David Heinemeier Hansson (DHH) in his conversation with Lex Fridman. DHH’s perspective—“I trust humans as Matz trusts humans”—resonates deeply with the goal of this package: to make Dart code more natural, expressive, and enjoyable for humans.

Inspired by the trust in humans and the pursuit of simplicity.
“I trust humans in the same way that Matz trusts humans” — DHH

## Inspiration

`3.times {}` is the inspiration behind this package. It captures the essence of making code more expressive and human-friendly.

## Getting started

Add `plain` to your `pubspec.yaml`:

```yaml
dependencies:
  plain: ^1.0.0
```

## TL;DR (show me)

### int extensions

```dart
import 'package:plain/plain.dart';

void main() {
  // --- Ruby-ish loops -------------------------------------------------------
  // 3.times { |i| ... }
  3.times(doThis: (i) => print('hi #$i'));        // hi #0, #1, #2

  // times with step (indexes jump by step)
  6.times(doThis: (i) => print(i), step: 2);      // 0, 2, 4

  // (4..7).each { |n| ... }  with iteration index
  4.range(7, doThis: (number, iteration) => print('$iteration:$number'));
  // 0:4, 1:5, 2:6, 3:7

  // descending range with custom step
  10.range(2, step: -2, doThis: (n, _) => print(n)); // 10, 8, 6, 4, 2

  // --- Durations (sugar) ----------------------------------------------------
  // produce Duration values
  print(5.seconds);   // 0:00:05.000000
  print(2.minutes);   // 0:02:00.000000
  print(3.hours);     // 3:00:00.000000
  print(7.days);      // 168:00:00.000000
  print(150.ms);      // 0:00:00.150000
  print(42.us);       // 0:00:00.000042


  // --- Year shortcut --------------------------------------------------------
  final newYear = 2025.year;  // DateTime(2025, 1, 1)
  print(newYear);

  // --- Factorial ------------------------------------------------------------
  print(5.factorial); // 120
}

```

## Additional information


- **Contributing**
  Contributions and suggestions are welcome! Please open issues or pull requests on [GitHub](https://github.com/0xharkirat/plain).

- **License**
  MIT

---



