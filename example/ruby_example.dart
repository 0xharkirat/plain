import 'package:ruby/ruby.dart';

void main() {
  3.times(
    doThis: (_) {
      print("Hello world");
    },
  );

  print("Repeated string: ${"Jimmy" * -1}");

  print("Reversed string: ${"Hello world!".reverse}");

  print("Reversed string: ${40.toString().reverse}");

  final nums = [3, 1, 10, -4];
  nums.sorted(); // [-4, 1, 3, 10]
  nums.sorted(desc: true); // [10, 3, 1, -4]
  nums.min; // -4
  nums.maxOrNull; // 10

  final names = ['Zed', 'Amy', 'bob'];
  names.sorted(); // ['Amy', 'Zed', 'bob'] (case-sensitive)
  names.sortedBy(
    (s) => s.toLowerCase(),
  ); // ['Amy', 'bob', 'Zed'] (case-insensitive)
  names.sortedBy((s) => s.length, desc: true); // ['Zed', 'Amy', 'bob']
}
