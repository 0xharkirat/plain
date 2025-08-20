import 'package:characters/characters.dart';

/// Extension methods for enhanced string manipulation.
extension PleasantStringExtensions on String {
  /// Returns a new string with the characters in reverse order.
  ///
  /// Handles Unicode grapheme clusters correctly.
  String get reverse => characters.toList().reversed.join();

  /// Splits a multiline string into a list of lines.
  ///
  /// Lines are separated by the newline character (`\n`).
  List<String> get lines => split('\n');

  /// Returns the string with the first character capitalized and the rest in lowercase.
  ///
  /// If the string is empty, returns the original string.
  String get capitalize {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Returns a new string with uppercase letters converted to lowercase and vice versa.
  ///
  /// Non-alphabetic characters are unchanged.
  String get swapcase {
    return split('')
        .map((c) {
          if (c == c.toUpperCase()) {
            return c.toLowerCase();
          } else {
            return c.toUpperCase();
          }
        })
        .join('');
  }

  /// Compares this string to [other], optionally case-sensitive.
  ///
  /// If [caseSensitive] is `false` (default), comparison ignores case.
  bool casecmp(String other, {bool caseSensitive = false}) {
    if (caseSensitive) {
      return this == other;
    }
    return toLowerCase() == other.toLowerCase();
  }

  /// Inserts [str] into this string at the given [index].
  ///
  /// Throws [RangeError] if [index] is out of bounds.
  String insert(int index, String str) {
    if (index < 0 || index > length) {
      throw RangeError.index(index, this);
    }
    return substring(0, index) + str + substring(index);
  }
}
