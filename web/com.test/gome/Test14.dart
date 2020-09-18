// 返回一个函数对象
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

void main() {
  // 创建一个 +2 的函数
  var add2 = makeAdder(2);

  // 创建一个 +4 的函数
  var add4 = makeAdder(4);
print(add2(2));
  assert(add2(3) == 5);
  assert(add4(3) == 7);

  void test(){

  }
}
