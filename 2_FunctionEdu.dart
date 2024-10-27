
void main() {

  print('positional parameter 함수 실행');
  addNum(10, 20, 30);
  print('positional parameter 함수 종료');
  print('\n');

  print('optional parameter 함수 실행');
  addNumForOptional(10);          // 필수 parameter 만 전달 나머지 값은 default 값으로 대체
  addNumForOptional(10, 200, 300);// 모든 parameter 전달
  print('optional parameter 함수 종료');
  print('\n');

  print('named parameter 함수 실행');
  addNumForNamed(x: 10, y: 20, z: 30); // 함수에 명시된 순서대로 전달(문제없음)
  addNumForNamed(z: 30, y: 20, x: 10); // 함수에 명시된 순서와는 상관없이 전달(문제없음)
  print('named parameter 함수 종료');
  print('\n');

  print('named AND optional parameter 함수 실행');
  addNumForNamedAndOptional(x: 10, y: 20, z: 30); // 모든 parameter 전달
  addNumForNamedAndOptional(x: 10, y: 20);        // 팔수 parameter 만 전달 z 는 default 값으로 대체
  print('named AND optional parameter 함수 종료');
  print('\n');

  print('named AND optional AND positional parameter 함수 실행');
  addNumForNamedAndOptionalAndPositional(10, y: 20);        // positional, named, optional parameter
  addNumForNamedAndOptionalAndPositional(10, y: 20, z: 40); // positional, named, optional parameter
  print('named AND optional AND positional parameter 함수 종료');
  print('\n');

  print('return 함수 실행');
  int result1 = addNumForReturn(10, 20, 30);
  int result2 = addNumForReturn(40, 50, 60);
  print('result1: $result1');
  print('result2: $result2');
  print('sum : ${result1 + result2}');
  print('return 함수 종료');
  print('\n');

  print('arrow origin 함수 실행');
  addNumForArrowOrigin(10, y: 20);
  addNumForArrowOrigin(10, y: 20, z: 40);
  print('arrow origin 함수 종료');
  print('\n');

  print('arrow 함수 실행');
  addNumForArrow(10, y: 20);
  addNumForArrow(10, y: 20, z: 40);
  print('arrow 함수 종료');
  print('\n');

}

// positional parameter - 변수를 넣는 순서가 중요함.
addNum(int x, int y, int z) {
  int sum = x + y + z;

  print('x = $x');
  print('y = $y');
  print('z = $z');

  if (sum % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }
}

// optional parameter - 있어도 되고 없어도 되는 파라미터(기본값을 지정해주어야 됨)
addNumForOptional(int x, [int y = 20, int z = 30]) {
  int sum = x + y + z;

  print('x = $x');
  print('y = $y');
  print('z = $z');

  if (sum % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }
}

// named parameter - 이름을 가진 파라미터
addNumForNamed({
  required int x,
  required int y,
  required int z
}) {
  int sum = x + y + z;

  print('x = $x');
  print('y = $y');
  print('z = $z');

  if (sum % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }
}

// named parameter - 이름을 가진 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터(기본값을 지정해주어야 됨 null 허용 시 타입 뒤에 ? 추가)
addNumForNamedAndOptional({
  required int x,
  required int y,
  int z = 30
}) {
  int sum = x + y + z;

  print('x = $x');
  print('y = $y');
  print('z = $z');

  if (sum % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }
}

// positional parameter - 변수를 넣는 순서가 중요함.
// named parameter - 이름을 가진 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터(기본값을 지정해주어야 됨 null 허용 시 타입 뒤에 ? 추가)
addNumForNamedAndOptionalAndPositional(int x, {
  required int y,
  int z = 30
}) {
  int sum = x + y + z;

  print('x = $x');
  print('y = $y');
  print('z = $z');

  if (sum % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }
}

int addNumForReturn(int x, int y, int z) {
  int sum = x + y + z;

  print('x = $x');
  print('y = $y');
  print('z = $z');

  if (sum % 2 == 0) {
    print('짝수');
  } else {
    print('홀수');
  }

  return sum;
}

// 화살표 함수
int addNumForArrowOrigin(int x, {
  required int y,
  int z = 30
}) {
  int sum = x + y + z;
  return sum;
}
// 위 함수와 같은 동작을 함
int addNumForArrow(int x, {
  required int y,
  int z = 30
}) => x + y + z;