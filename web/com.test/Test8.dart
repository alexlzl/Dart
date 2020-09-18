main() {
  create();
}

/**
 * 报的是类型不匹配？为什么呢？经过一番搜查，发现getData是一个异步操作函数，它的返回值是一个await延迟执行的结果。在Dart中，有await标记的运算，其结果值是一个Future对象，Future并不是String类型，就报错了。那么怎么才正确获得异步的结果呢？Dart规定async标记的函数，只能由await来调用，下面改成这样
 */
void create() async {
  String data = await getData();
  print(data);
  print("I love Future");
}

getData() async {
  return await "I love Android";
}
