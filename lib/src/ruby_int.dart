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

 
}
