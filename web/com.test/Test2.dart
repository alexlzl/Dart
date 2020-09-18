class Student {
  String string;

  void testMethod() {
    print("This is a  test method");
  }

  String testMethod1() {
    print("This is a  test method1");
    return "test";
  }

  String printString() {
    print("string: $string");
    return string;
  }
  Child testMethod2(){
    print("method2");
    return Child();
  }
}

main() {
  new Student()
    ..testMethod()
    ..testMethod1()
    ..string = "猫了个咪"
    ..printString()..testMethod2();
   // Child child=new Child();
   // child.testChild();
  new Student().testMethod2()..testChild();
}

class Child{
  void testChild(){
    print("testchild");
  }
}