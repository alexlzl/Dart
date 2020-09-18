
void main(){

  var t=100;
  dynamic a=100;
  Object o=new Test();
  print(o.toString());
  // print(a.test());
  // print(t.foo());

  var p = new People();
  p.show();
  // p.name;
}
class Test{
 var a="alex";
 static var  b='a';
}

class People {
  static String name = 'abc';
  void show() {
    print(name);
  }
}