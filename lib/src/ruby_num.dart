import 'dart:math' as math;

extension RubyNumExtensions on num {
  num pow(num exponent) => math.pow(this, exponent);

  /// Nice aliases
  num get squared => pow(2);
  num get cubed => pow(3);

  num get sqrt => math.sqrt(this);

}
