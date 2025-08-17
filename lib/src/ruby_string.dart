extension RubyStringExtensions on String {
  /// Reverses the string.
  /// TODO: Implement a more efficient reverse method.
  String get reverse {
    return split('').reversed.join('');
  }

  /// Repeats the string the specified number of times.
  /// like `"Hello" * 3` => `"HelloHelloHello"`
  String operator *(int times) {
    if (times < 0) throw ArgumentError('times must be non-negative');
    return List.filled(times, this).join();
  }
}
