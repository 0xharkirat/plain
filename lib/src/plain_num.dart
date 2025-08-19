import 'dart:math' as math;

/// Extension methods for enhanced numeric operations.
extension PlainNumExtensions on num {
  /// Returns this number raised to the power of [exponent].
  ///
  /// Example: `3.pow(2)` returns `9`.
  num pow(num exponent) => math.pow(this, exponent);

  /// Returns this number squared (to the power of 2).
  ///
  /// Example: `4.squared` returns `16`.
  num get squared => pow(2);

  /// Returns this number cubed (to the power of 3).
  ///
  /// Example: `2.cubed` returns `8`.
  num get cubed => pow(3);

  /// Returns the square root of this number.
  ///
  /// Example: `9.sqrt` returns `3.0`.
  num get sqrt => math.sqrt(this);
}
