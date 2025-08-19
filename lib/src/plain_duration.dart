extension PlainDurationExtensions on Duration {
  /// Returns the date and time this duration ago.
  /// use `3.minutes.ago`
  DateTime get ago => DateTime.now().subtract(this);

  /// Returns the date and time this duration from now.
  /// use `3.minutes.fromNow`
  DateTime get fromNow => DateTime.now().add(this);
}
