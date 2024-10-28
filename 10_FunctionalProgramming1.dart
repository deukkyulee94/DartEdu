
void main() {

  List<String> blackPink = ['로제', '지수', '리사', '제니', '제니'];
  print(blackPink);
  // Map 으로 형변환
  print(blackPink.asMap());
  // Set 으로 형변환
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  // Iterable 로 변환
  print(blackPinkMap.keys);
  print(blackPinkMap.values);

  // List 로 변환
  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  // List 를 Set 으로 변환
  Set blackPinkSet = Set.from(blackPink);

  // Set 을 List 로 변환
  print(blackPinkSet.toList());
}
