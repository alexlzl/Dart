main() {
  create();
}

void create() {
  // String data = getData();
  print(getData());
  print("I love Future");
}

getData() async {
  return await "I love Android";
  // return 1;
}
