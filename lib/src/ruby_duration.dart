extension RubyDurationExtensions on Duration {
  DateTime get ago => DateTime.now().subtract(this);
  DateTime get fromNow => DateTime.now().add(this);
}
