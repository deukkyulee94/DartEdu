
void main() {
  print('----------- Idol -----------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  print('----------- BoyGroup -----------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayMembersCount();
  bts.sayName();
  bts.sayMale();

  print('----------- GirlGroup -----------');
  GirlGroup redVelvet = GirlGroup('Red Velvet', 5);

  redVelvet.sayMembersCount();
  redVelvet.sayName();
  redVelvet.sayFemale();

  print('----------- Type Comparison -----------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  // 상속을 하면 부모 클래스도 자식 클래스도 될 수 있다.
  print('----------- Type Comparison2 -----------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  // 자식 클래스 끼리는 같은 클래스가 아니다.
  print('----------- Type Comparison3 -----------');
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);

}

// 상속 - inheritance
// 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여 받는다.
// 자식에서는 부모로 속성이 전달되지 않는다.
// 같은 자식 클래스끼리도 속성이 전달되지 않는다.
class Idol{
  // 이름
  String name;
  // 멤버 수
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount
  });

  void sayName(){
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount(){
    print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }
}

// 자식 클래스
class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount) : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

// 자식 클래스
class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount) : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print('저는 여자 아이돌입니다.');
  }
}