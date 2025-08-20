## 0.0.1-dev

#### pleasant_string.dart
- `reverse`: Reverse the string (Unicode-safe).
- `lines`: Split a multiline string into lines.
- `capitalize`: Capitalize the first character, lowercase the rest.
- `swapcase`: Swap the case of each letter.
- `casecmp`: Compare two strings, optionally case-sensitive.
- `insert`: Insert a string at a given index.

#### pleasant_num.dart
- `pow(exponent)`: Raise the number to a given power.
- `squared`: Square the number.
- `cubed`: Cube the number.
- `sqrt`: Square root of the number.

#### pleasant_int.dart
- `times`: Run a function N times, passing the index each time.
- `range`: Iterate from start to end (inclusive), with optional step and callback.
- `seconds`, `minutes`, `hours`, `days`, `ms`, `us`: Create a `Duration` from an integer.
- `year`: Get a `DateTime` for January 1st of this year.
- `factorial`: Get the factorial of the integer.

#### pleasant_iterable.dart
- `sum`: Sum all elements.
- `average`: Average value of elements.
- `firstOrNull`: First element or null if empty.
- `lastOrNull`: Last element or null if empty.
- `chunked(size)`: Split iterable into chunks of given size.

#### pleasant_duration.dart
- `ago`: Get a `DateTime` representing the duration ago from now.
- `fromNow`: Get a `DateTime` representing the duration from now.
- `inHours`, `inMinutes`, `inSeconds`, etc.: Duration in various units.

#### pleasant_datetime.dart
- `isToday`: Check if the date is today.
- `isYesterday`: Check if the date is yesterday.
- `isTomorrow`: Check if the date is tomorrow.
- `copyWith`: Copy the `DateTime` with modified fields.
- `format(pattern)`: Format the `DateTime` using a pattern.

---

Initial pre-release with practical, lightweight, and idiomatic extensions


