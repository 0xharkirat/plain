import 'package:plain/plain.dart';

void main() {
  3.times(
    doThis: (_) {
      print("Hello world");
    },
  );

  print("Repeated string: ${"Jimmy" * 4}");

  print("Reversed string: ${"Hello world!".reverse}");

  print("Reversed string: ${40.toString().reverse}");

  final nums = [3, 1, 10, -4];
  print("Sorted nums: ${nums.sorted()}"); // [-4, 1, 3, 10]
  print("Sorted nums desc: ${nums.sorted(desc: true)}"); // [10, 3, 1, -4]
  print("Min num: ${nums.min}"); // -4
  print("Max num (or null): ${nums.maxOrNull}"); // 10

  final names = ['Zed', 'Amy', 'bob'];
  print(
    "Sorted names: ${names.sorted()}",
  ); // ['Amy', 'Zed', 'bob'] (case-sensitive)
  print(
    "Sorted names (case-insensitive): ${names.sortedBy((s) => s.toLowerCase())}",
  ); // ['Amy', 'bob', 'Zed']
  print(
    "Sorted names by length desc: ${names.sortedBy((s) => s.length, desc: true)}",
  ); // ['Zed', 'Amy', 'bob']

  print(3.minutes.ago);

  print(3.minutes.fromNow);

  print(Date.today);
  print(Date.now);

  print(2020.year.isLeapYear);

  names.forEachReversed((x) => print(x));   // 4, 3, 2, 1


}
