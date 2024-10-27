
void main() {

  var name = 'Dart';
  print(name);

  var name2 = 'Dart2';
  print(name2);

  name = 'Flutter';
  print(name);

  // 같은 명의 변수는 재 선언 할 수 없음.
  //var name = 'DART';

  //------------------------------------------/
  // 정수
  // integer
  int int1 = 10;
  print(int1);

  int int2 = -10;
  print(int2);

  int intNum1 = 2;
  int intNum2 = 4;
  print(intNum1 + intNum2);
  print(intNum1 - intNum2);
  print(intNum1 / intNum2);
  print(intNum1 * intNum2);
  //------------------------------------------/
  // 실수
  // double
  double double1 = 2.5;
  double double2 = 0.5;
  print(double1 + double2);
  print(double1 - double2);
  print(double1 / double2);
  print(double1 * double2);
  //------------------------------------------/
  // boolean
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue);
  print(isFalse);
  //------------------------------------------/
  // 문자
  // String
  String strName1 = 'Dart';
  String strName2 = 'Flutter';
  print(strName1);
  print(strName2);
  print(strName1 + strName2); // 문자열도 더할 수 있음.
  print(strName1 + ' ' + strName2);
  print('${strName1} ${strName2}'); // ${}를 사용하면 변수를 넣을 수 있음.
  print('$strName1 $strName2'); // {}를 생략할 수 있는 경우가 있다.
  //------------------------------------------/
  // var = 할당 된 값으로 타입이 지정 됨.
  var varName = 'DART';
  print(varName);
  print(varName.runtimeType);

  var varNum = 20;
  print(varNum);
  print(varNum.runtimeType);

  // dynamic = 할당 된 값으로 타입이 지정 됨.
  dynamic dyName = 'DyName';
  print(dyName);
  print(dyName.runtimeType);

  // dynamic 은 다른 타입으로 재할당 가능.
  dyName = 2;
  // var 는 최초 할당한 값으로만 재할당 가능.
  //varName = 2;

  dynamic dyNum = 1;
  print(dyNum);
  print(dyNum.runtimeType);
  //------------------------------------------/
  // nullable / non-nullable
  String nullName = 'nullName';
  print(nullName);

  // null 이 들어갈 수 없는데 null 을 할당하여 에러가 남
  //nullName = null;

  // 타입 뒤에 ? 를 붙이면 null 허용
  String? nullName2 = 'nullName2';
  nullName2 = null;
  print(nullName2);

  // 느낌표를 넣으면 null 이 아니다 라는 뜻.
  String? nullName3 = 'nullName3';
  print(nullName3!);
  //------------------------------------------/
  // final / const
  // final 은 var 키워드를 생략가능 Type 을 명시하지 않아도 됨.
  // final fName = 'fName';
  final String fName = 'fName';
  print(fName);
  // final 은 값 재할당 불가
  //fName = 'fName fName';

  // const 는 var 키워드를 생략가능 Type 을 명시하지 않아도 됨.
  // const cName = 'cName';
  const String cName = 'cName';
  print(cName);
  // const 는 값 재할당 불가
  //cName = 'cName cName';

  // 런 시점이 아닌 코드가 실행되는 시점의 시간을 할당함.
  DateTime now = DateTime.now();
  print(now);

  // 실행되는 시점의 시간을 가져오기 때문에 now 값과 다른 값이 나온다.
  DateTime now2 = DateTime.now();
  print(now2);

  // final 은 빌드 시점에 값을 알고 있지 않아도 됨.
  final DateTime now3 = DateTime.now();
  // const 는 빌드 시점에 값을 알고 있어야 됨. 그러므로 컴파일 에러가 발생
  //const DateTime now4 = DateTime.now();
  //------------------------------------------/
  // operator
  int oNum = 2;

  print(oNum);
  print(oNum + 2);
  print(oNum - 2);
  print(oNum / 2);
  print(oNum * 2);

  print('---------');
  print(oNum % 2);
  print(oNum % 3);

  print(oNum);
  print('---------');

  oNum++;
  print(oNum);

  oNum--;
  print(oNum);

  double oDNum = 4.0;
  print(oDNum);

  oDNum += 1;
  print(oDNum);

  oDNum -= 1;
  print(oDNum);

  oDNum *= 2;
  print(oDNum);

  oDNum /= 2;
  print(oDNum);

  double? oDNum2 = 4.0;
  print(oDNum2);

  oDNum2 = 2.0;
  print(oDNum2);

  oDNum2 = null;
  print(oDNum2);

  // ?? 를 넣으면 해당 값이 null 일 경우 오른쪽 값으로 할당한다.
  oDNum2 ??= 3.0;
  print(oDNum2);

  //------------------------------------------/




}