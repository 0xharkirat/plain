extension PlainIntExtensions on int {
  /// Calls the [doThis] function the specified number of times.
  ///
  /// based on ruby's `3.times do`
  ///
  /// If [step] is not provided, it defaults to 1.
  void times({required void Function(int i) doThis, int? step}) {
    step ??= 1;
    for (var i = 0; i < this; i += step) {
      doThis(i);
    }
  }

  /// Iterates from [this] (as [start]) to [end] (inclusive), calling [doThis] for each value.
  ///
  /// [number] is the current value in the sequence.
  /// [iteration] is the zero-based position in the loop.
  ///
  /// Optional [step] controls increment (default: +1 or -1 depending on direction).
  ///
  /// Example:
  /// ```dart
  /// 2.range(5, (number, iteration) => print('Step $iteration: $number'));
  /// // Output:
  /// // Step 0: 2
  /// // Step 1: 3
  /// // Step 2: 4
  /// // Step 3: 5
  /// ```
  /// based on ruby's (4..5).each { |i| puts i }
  void range(
    int end, {
    void Function(int number, int iteration)? doThis,
    int? step,
  }) {
    final start = this;
    final increment = step ?? (end >= start ? 1 : -1);
    if (increment == 0) throw ArgumentError('step cannot be 0');
    var iteration = 0;
    if (doThis == null) return;
    if (increment > 0) {
      for (var number = start; number <= end; number += increment) {
        doThis(number, iteration++);
      }
    } else {
      for (var number = start; number >= end; number += increment) {
        doThis(number, iteration++);
      }
    }
  }

  /// Returns a [Duration] of this many seconds.
  Duration get seconds => Duration(seconds: this);

  /// Returns a [Duration] of this many minutes.
  Duration get minutes => Duration(minutes: this);

  /// Returns a [Duration] of this many hours.
  Duration get hours => Duration(hours: this);

  /// Returns a [Duration] of this many days.
  Duration get days => Duration(days: this);

  /// Returns a [Duration] of this many milliseconds.
  Duration get ms => Duration(milliseconds: this);

  /// Returns a [Duration] of this many microseconds.
  Duration get us => Duration(microseconds: this);

  /// Returns a [DateTime] for January 1st of this year.
  DateTime get year => DateTime(this);

  /// Returns the factorial of the number.
  /// Example: `5.factorial == 120`
  ///
  /// Throws [ArgumentError] if the number is negative.
  int get factorial {
    if (this < 0) {
      throw ArgumentError('Factorial is not defined for negative numbers');
    }
    if (this == 0 || this == 1) return 1;
    return List.generate(this, (i) => i + 1).reduce((a, b) => a * b);
  }
}
