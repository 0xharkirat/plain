extension RubyIntExtensions on int {
  /// Calls the [doThis] function the specified number of times.
  ///
  /// If [doThis] is null, nothing happens.
  /// based on ruby's 3.times do: something
  void times({void Function(int i)? doThis}) {
    if (doThis == null) return;
    for (var i = 0; i < this; i++) {
      doThis(i);
    }
  }


  Duration get seconds => Duration(seconds: this);
  Duration get minutes => Duration(minutes: this);
  Duration get hours => Duration(hours: this);
  Duration get days => Duration(days: this);
  Duration get ms => Duration(milliseconds: this);
  Duration get us => Duration(microseconds: this);

  // create a DateTime object for the year
  // 2020.year => January 1, 2020
  DateTime get year => DateTime(this);

  /// Returns the factorial of the number.
  /// For example, `5.factorial` returns `120`.
  int get factorial {
    if (this < 0) {
      throw ArgumentError('Factorial is not defined for negative numbers');
    }
    if (this == 0 || this == 1) return 1;
    return (this - 1).factorial * this;
  }
}
