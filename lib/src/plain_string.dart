import 'package:characters/characters.dart';

extension PlainStringExtensions on String {
  /// Reverses the string.
  /// TODO: Implement a more efficient reverse method.
  /// unicode chars are failing
  String get reverse => characters.toList().reversed.join();

  // get lines from multiline string
  List<String> get lines => split('\n');


  // Case & Text Transform
  String get capitalize {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }


  String get swapcase {
    return split('').map((c) {
      if (c == c.toUpperCase()) {
        return c.toLowerCase();
      } else {
        return c.toUpperCase();
      }
    }).join('');
  }

  // casecmp
  bool casecmp(String other, {bool caseSensitive = false}) {
    if (caseSensitive) {
      return this == other;
    }
    return toLowerCase() == other.toLowerCase();
  }

  // insert
  String insert(int index, String str) {
    if (index < 0 || index > length) {
      throw RangeError.index(index, this);
    }
    return substring(0, index) + str + substring(index);
  }

}



