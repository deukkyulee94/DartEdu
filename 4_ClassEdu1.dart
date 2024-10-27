
void main() {

  // 인스턴스는 생성할 때 마다 값을 만들기 때문에 값이 같아도 다른 객체로 인식된다.
  // 그러나 const 를 붙여서 생성하면 같은 인스턴스가 된다.
  // new 생략 가능
  Idol blackPink = const Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );

  Idol blackPink2 = const Idol(
      '블랙핑크',
      ['지수', '제니', '리사', '로제']
  );

  // 이런 것 때문에 immutable 프로그래밍을 함. (필드에 final을 넣음)
  // blackPink.name = '다트';

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  print(blackPink == blackPink2);



  Idol bts = Idol.fromList(
    [
      ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
      'BTS'
    ]
  );
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

// Idol class
// immutable 프로그래밍 - 한번 값들을 선언하고 나면은 변경할 수 없도록 만드는 방식
class Idol{

  final String name;
  final List<String> members;

  // 생성자
  //Idol(String name, List<String> members)
  //    : this.name = name,
  //      this.members = members;
  // 위와 같은 동작을 하는 생성자
  // 그냥 생성자와 const 생성자 재할당을 못하게 하기 위함.
  const Idol(this.name, this.members);

  // 네임드 생성자
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello(){
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce(){
    print('저희 멤버는 ${this.members}가 있습니다.');
  }


}