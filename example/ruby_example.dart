import 'package:ruby/ruby.dart';

void main() {
  3.times(
    doThis: (_) {
      print("Hello world");
    },
  );

  print("Repeated string: ${"Jimmy" * -1}");

  print("Reversed string: ${"Hello world!".reverse}");
}
