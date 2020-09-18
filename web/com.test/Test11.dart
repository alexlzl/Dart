library loggerlib;

import 'Test10.dart';
import 'gome/Test12.dart';

void _log(msg) {
  print("Log method called in loggerlib msg:$msg");
}

void main(){
  new Test10().test();
  test1();
  test12();
}