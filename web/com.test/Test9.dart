main() {
  for (var item in ceshi(0)) {
    print(item);
  }
}

Iterable<int> ceshi(n) sync* {
  print("Begin");
  while (n < 5) {
    n = n + 1;
    yield n;
  }
  print("End");
}
