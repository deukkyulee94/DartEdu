
void main() {

  _Idol blackPink = _Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제']
  );

  _Idol bts = _Idol.fromList(
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

// 클래스 명에 _ 를 붙이면 private class 가 된다.
// private class 가 되면 한 파일에서만 사용할 수 있다.
// 변수도 함수도 동일하다.
class _Idol{

  String name;
  List<String> members;

  // 기본 생성자
  _Idol(this.name, this.members);

  // 네임드 생성자
  _Idol.fromList(List values)
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