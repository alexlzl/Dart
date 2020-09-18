/**
 * 1,方法 awiat 关键字调用 ==== 方法内部  await 语句之前 ====
    1,方法 awiat 关键字调用   == await 执行的语句 ==
    1,方法 awiat 关键字调用 ==== 方法内部  await 语句之后 ====
    1,---------------------------
    2,方法直接调用 ==== 方法内部  await 语句之前 ====
    2,方法直接调用   == await 执行的语句 ==
    2,----------------------------
    2,方法直接调用 ==== 方法内部  await 语句之后 ====
 */

Future<void> main(List<String> args) async {
  // await 方式调用异步方法则代码所在的方法必须添加 async 声明（语法要求）
  // await 方式调用异步方法则会待异步方法执行完成后再执行后续的代码
  await func('1,方法 awiat 关键字调用');
  print('1,---------------------------');

  // 没有使用 await 方式调用异步方法，则异步方法执行到 await 处后等待，程序继续执行异步方法外的后续代码
  func('2,方法直接调用');
  print('2,----------------------------');
}

// 异步方法
func(String callType) async {
  print('$callType ==== 方法内部  await 语句之前 ====');
  await print('$callType   == await 执行的语句 ==');
  print('$callType ==== 方法内部  await 语句之后 ====');
}
