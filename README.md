
# plain

**PLAIN: Practical Lightweight Additions for Idiomatic Natural code**

`plain` is a Dart package inspired by the elegance and human-centric philosophy of Ruby, as discussed by David Heinemeier Hansson (DHH) in his conversation with Lex Fridman. DHH’s perspective—“I trust humans as Matz trusts humans”—resonates deeply with the goal of this package: to make Dart code more natural, expressive, and enjoyable for humans.

## Inspiration

`3.times {}` is the inspiration behind this package. It captures the essence of making code more expressive and human-friendly.


## Getting started

Add `plain` to your `pubspec.yaml`:

```yaml
dependencies:
  plain: ^1.0.0
```

Import it in your Dart code:

```dart
import 'package:plain/plain.dart';
```

## Usage

```dart
import 'package:plain/plain.dart';

void main() {
  print('hello world'.capitalize); // Hello world
  print('Dart'.reverse);           // traD
  print(3.squared);                // 9
  print(9.sqrt);                   // 3.0
  print('foo'.insert(1, 'bar'));   // fbaroo
}
```

## Additional information

- **Why “plain”?**
  PLAIN stands for Practical Lightweight Additions for Idiomatic Natural code. The name reflects the package’s philosophy: keep things simple, useful, and human-friendly.

- **Contributing**
  Contributions and suggestions are welcome! Please open issues or pull requests on [GitHub](https://github.com/0xharkirat/plain).

- **License**
  MIT

---

Inspired by the trust in humans and the pursuit of simplicity.
“Code should be optimized for humans, not machines.” —
