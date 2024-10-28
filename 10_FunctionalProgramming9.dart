
// cascading Operator
void main() {
  List<Map<String, String>> people = [
    {
      'name': '로제',
      'group': '블랙핑크',
    },
    {
      'name': '지수',
      'group': '블랙핑크',
    },
    {
      'name': 'RM',
      'group': 'BTS',
    },
    {
      'name': '뷔',
      'group': 'BTS',
    },
  ];

  print(people);

  final parsedPeople = people.map(
      (x) => Person(name: x['name']!, group: x['group']!)
  ).toList();

  print(parsedPeople);

  for(Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  final bts = parsedPeople.where(
          (x) => x.group == 'BTS'
  );

  print(bts);

}

class Person {
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group,
  });

  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }

}
