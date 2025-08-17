extension IntTimes on int {

  /// Calls the [doThis] function the specified number of times.
  /// 
  void times({void Function(int i)? doThis}) {
    if (doThis == null) return;
    for (var i = 0; i < this; i++) {
      doThis(i);
    }
  }
}
