
void main() {
  Lecture<String, String> lecture1 = Lecture('123', 'lecture1');

  lecture1.printIdType();

  Lecture<int, String> lecture2 = Lecture(123, 'lecture1');

  lecture2.printIdType();
}

// generic - 타입을 외부에서 받을 때 사용
// 타입을 미리 지정하지 않고 외부에서 받고 싶을 때 <> 내부엔 아무값이나 들어가도 됨.
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}