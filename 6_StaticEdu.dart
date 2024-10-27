
void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');
  Employee jenny = Employee('제니');

  Employee.building = '63빌딩';
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();
  jenny.printNameAndBuilding();

  Employee.printBuilding();
}

// static 은 instance 에 귀속되지 않고 class 에 귀속된다.
// instance 에 귀속된다는 의미는 클래스를 이용해 변수를 생성할 때 특정 변수에 귀속 된다는 것이다.
class Employee {

    // 알바생이 일하는 건물
    static String? building;
    // 알바생 이름
    final String name;

    Employee(this.name);

    void printNameAndBuilding() {
      print('제 이름은 $name입니다. $building 건물에서 일하고 있습니다.');
    }
    static void printBuilding() {
      print('저는 $building 건물에서 일하고 있습니다.');
    }

}