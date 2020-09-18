typedef Compare = int Function(Object a, Object b);
typedef A=void  Function();
class SortedCollection {
  Compare compare;

  SortedCollection(this.compare){
    print(compare);
  }
}

int sort(Object a, Object b) => 0;

void main() {
  SortedCollection coll = SortedCollection(sort);

  if (coll.compare is Function) {
    print('coll.compare is Function');
  }
  if (coll.compare is Compare) {
    print('coll.compare is Compare');
  }
  test(100, sort);
}
test(int a,Function f){
   int a= f("a","b");
   print(a);

}

