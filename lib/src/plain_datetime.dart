extension Date on DateTime {
  /// Returns the current date and time.
  /// Use Date.now for the current date
  static DateTime get now => DateTime.now();

  /// Returns today's date at midnight.
  /// Use Date.today for today's date
  static DateTime get today => DateTime(now.year, now.month, now.day);

  /// Returns true if the date is today.
  bool get isToday {
    final today = DateTime.now();
    return year == today.year && month == today.month && day == today.day;
  }

  /// Returns true if the date is tomorrow.
  bool get isTomorrow {
    final tomorrow = DateTime.now().add(Duration(days: 1));
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }

  /// Returns true if the date is yesterday.
  bool get isYesterday {
    final yesterday = DateTime.now().subtract(Duration(days: 1));
    return year == yesterday.year &&
        month == yesterday.month &&
        day == yesterday.day;
  }

  /// Returns true if the date is a leap year.
  bool get isLeapYear {
    if (year % 400 == 0) return true;
    if (year % 100 == 0) return false;
    return year % 4 == 0;
  }
}
