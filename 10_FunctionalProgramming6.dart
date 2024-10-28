
// reduce = 같은 타입 출력
void main() {
  List<int> numbers = [
    1,
    3,
    5,
    7,
    9
  ];

  //final result = numbers.reduce((prev, next) {
  //  print('--------');
  //  print('prev : $prev');
  //  print('next : $next');
  //  print('total : ${prev + next}');
  //
  //  return prev + next;
  //});

  final result = numbers.reduce((prev, next) => prev + next);

  print(result);

  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '다트입니다.'
  ];

  final sentence = words.reduce((prev, next) => prev + next);

  print(sentence);
}
