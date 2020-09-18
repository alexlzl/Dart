String data;

main() {
  create();
}

void create() async {
  String s= await getData();
  print("I love Future");
}

getData() async {
  data = await "I love Android";
  print(data);
}
