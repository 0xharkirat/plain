extension RubyStringExtensions on String {
  /// Reverses the string.
  /// TODO: Implement a more efficient reverse method.
  /// unicode chars are failing
  String get reverse {
    return split('').reversed.join('');
  }


}
