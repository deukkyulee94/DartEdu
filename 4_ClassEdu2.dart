
void main() {

  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );

  Idol bts = Idol.fromList(
    [
      ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
      'BTS'
    ]
  );

  print(blackPink.firstMember);
  print(bts.firstMember);

  blackPink.firstMember = '다트';
  bts.firstMember = '아이언맨';

  print(blackPink.firstMember);
  print(bts.firstMember);

}

// getter / setter
// 데이터 가져올 때 / 데이터 설정할 때
class Idol{

  String name;
  List<String> members;

  // 기본 생성자
  Idol(this.name, this.members);

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

  // getter
  String get firstMember{
    return this.members[0];
  }

  // setter
  // 무조건 하나의 parameter 만 들어감.
  // 요즘엔 immutable 프로그래밍을 사용하기에(변수에 final 선언) setter 는 거의 사용하지 않음
  set firstMember(String name){
    this.members[0] = name;
  }
}