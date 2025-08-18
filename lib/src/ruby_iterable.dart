import 'dart:math';

extension RubyIterableExtensions<T extends Comparable<Object?>> on Iterable<T> {
  /// Smallest element (throws on empty). Use minOrNull() if unsure.
  T get min {
    if (isEmpty) throw StateError('min on empty Iterable');
    return reduce((a, b) => a.compareTo(b) <= 0 ? a : b);
  }

  /// Largest element (throws on empty). Use maxOrNull() if unsure.
  T get max {
    if (isEmpty) throw StateError('max on empty Iterable');
    return reduce((a, b) => a.compareTo(b) >= 0 ? a : b);
  }

  T? get minOrNull => isEmpty ? null : min;
  T? get maxOrNull => isEmpty ? null : max;

  /// New list sorted by natural order. Set [desc] for descending.
  List<T> sorted({bool desc = false}) {
    final list = toList();
    list.sort((a, b) => desc ? b.compareTo(a) : a.compareTo(b));
    return list;
  }

  /// New list sorted by a comparable key from each element.
  List<T> sortedBy<K extends Comparable<K>>(K Function(T e) key, {bool desc = false}) {
    final list = toList();
    list.sort((a, b) {
      final ka = key(a), kb = key(b);
      final cmp = ka.compareTo(kb);
      return desc ? -cmp : cmp;
    });
    return list;
  }

  /// New list sorted with a custom comparator.
  List<T> sortedWith(int Function(T a, T b) compare) {
    final list = toList();
    list.sort(compare);
    return list;
  }

  // Optional alias for reverse sorted:
  List<T> rsorted() => sorted(desc: true);

  /// each but reversed: reverse_each
  ///
  /// Calls [action] for every element in reverse iteration order.
  /// - If this is a List, it iterates without copying.
  /// - Otherwise it materializes to a fixed list once, then walks backwards.
  void forEachReversed(void Function(T element) action) {
    if (this is List<T>) {
      final list = this as List<T>;
      for (var i = list.length - 1; i >= 0; i--) {
        action(list[i]);
      }
    } else {
      final list = toList(growable: false);
      for (var i = list.length - 1; i >= 0; i--) {
        action(list[i]);
      }
    }
  }

  /// return random element from iterable
  T get sample {
    if (isEmpty) throw StateError('sample on empty Iterable');
    final randomIndex = (Random().nextDouble() * length).floor();
    return elementAt(randomIndex);
  }


}


