import 'dart:developer';

String generateId() {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 'a', 'b', 'c', 'd'];
  list.shuffle();
  final id = list.join();
  log('New id generated: $id');
  return id;
}
