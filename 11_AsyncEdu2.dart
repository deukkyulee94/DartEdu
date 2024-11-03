
void main() async {
  // Future - 미래에 받아올 값을 저장할 수 있음.
  // 모든 타입을 Future 로 선언할 수 있음
  // async 로 프로그래밍 가능
  Future<String> name = Future.value('다트');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print('result1 : $result1');
  print('result2 : $result2');
  print('result1 + result2 = ${result1 + result2}');

}

Future<int> addNumbers(int number1, int number2) async {
  print('계산 시작: $number1 + $number2');

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), (){
    print('계산 완료: $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료 $number1 + $number2');

  return number1 + number2;
}
