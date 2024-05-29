## 변수선언 및 타입

```dart
void main() {
// variable

// var vs String
// var는 타입을 값을 활용해 타입을 추론함.
var varName = "var";
var varNumber = 1;

print(varName.runtimeType);
print(varNumber.runtimeType);

// 정수
// integer
int number1 = 2;

print(number1);

int number2 = 4;

print(number1 + number2);
print(number1 - number2);
print(number1 / number2);
print(number1 \* number2);

// 실수
// double
double number3 = 2.5;
double number4 = 0.5;

print(number3 + number4);
print(number3 - number4);
print(number3 / number4);
print(number3 \* number4);

// 맞다 / 틀리다
// boolean
bool isTrue = true;
bool isFalse = false;

print(isTrue);
print(isFalse);

// 글자타입
// string
String name = "김정운";
String name2 = "이다";

print(name + name2);
print("${name} ${name2}");

// var와 달리 타입을 변경할 수 있다.
dynamic dynamicType = "김정운";
dynamic dynamicNumber = 1;

print(dynamicType);
print(dynamicNumber);

dynamicType = 2;
print(dynamicType);
}
```

## nullable - non nullable

```dart
void main() {
  // non-nullable - null이 될 수 없다.
  String name = "김정운";

  print(name);

  // name = null;

  // nullable - null이 될 수 있다.
  String? name2 = "김정운";

  print(name2!); // 현재 이값은 null이 아니다

  name2 = null;

  print(name2);
}

```

## final const

```dart
void main() {
  // final const로 선언시 변수의 값을 변경할 수 없다.
  final String name = "김정운";

  print(name);

  // name = "김정운2";

  // 타입도 생략이 가능하다.
  const name2 = "김정운";

  print(name2);

  // name2 = "김정운2";

  final DateTime now = DateTime.now();

  print(now);

  // const는 빌드타임의 값을 알고있어야 한다.
  // const DateTime now2 = DateTime.now();
}
```

## operator

```dart
void main() {
 int number = 2;

 print(number);
 print(number + 2);
 print(number - 2);
 print(number * 2);
 print(number / 2);

 print("------------");
 print(number % 2);
 print(number % 3);
 print(number);

 print("------------");
 number++;
 print(number);
 number--;
 print(number);

 print("------------");
 double number2 = 4.0;
 print(number2);
 number2 += 1;
 print(number2);
 number2 -= 1;
 print(number2);
 number2 *= 2;
 print(number2);
 number2 /= 2;
 print(number2);

 print("------------");
 double? number3 = 4.0;
 print(number3);
 number3 = 2.0;
 print(number3);
 number3 = null;
 print(number3);
 number3 ??= 3.0; // null 이면 값을 대입
 print(number3);

 print("------------");
 int number4 = 1;
 int number5 = 2;

 print(number4 > number5);
 print(number4 < number5);
 print(number4 >= number5);
 print(number4 <= number5);
 print(number4 == number5);
 print(number4 != number5);

 print("------------");
 int number6 = 1;

 print(number6 is int);
 print(number6 is String);
 print(number6 is! int);
 print(number6 is! String);

 print("------------");
 bool result = 12 > 10 && 1 > 0;
 print(result);

 bool result2 = 12 > 10 && 0 > 1;
 print(result2);

 bool result3 = 12 > 10 || 0 > 1;
 print(result3);
}

```

## List

```dart
void main() {
  // List
  List<String> stringList = ["김", "정", "운"];
  List<int> stringInt = [1, 2, 3];
  print(stringList);
  print(stringInt);

  // index
  // 0부터 시작
  print(stringList[0]);
  print(stringList[1]);
  print(stringList[2]);
  print(stringList.length);
  stringList.add("이");
  stringList.add("이");
  print(stringList);
  stringList.remove("이");
  print(stringList);
  print(stringList.indexOf("정"));
}
```

## Map

```dart
void main() {
  // Map
  // Key / Value
  Map<String, String> dictionary = {
    "Harry Potter": "해리포터",
    "Ron Weasley": "론 위즐리",
    "Hermione Granger": "헤르미온느 그레인저"
  };

  print(dictionary);

  Map<String, bool> isHarryPotter = {
    "Harry Potter": true,
    "Ron Weasley": true,
    "Iron Man": false,
  };

  print(isHarryPotter);

  isHarryPotter.addAll({"Spider Man": false});

  print(isHarryPotter);

  print(isHarryPotter["Iron Man"]);

  isHarryPotter["Hulk"] = false;

  print(isHarryPotter);

  isHarryPotter["Spider Man"] = true;

  print(isHarryPotter);

  isHarryPotter.remove("Harry Potter");

  print(isHarryPotter);

  print(isHarryPotter.keys);
  print(isHarryPotter.values);
}
```

## Set

```dart
void main() {
  // Set
  final Set<String> names = {"김정운", "Dart", "Flutter", "김정운"};

  print(names);

  names.add("kjw");

  print(names);

  names.remove("김정운");

  print(names);

  print(names.contains("Flutter"));
}
```

## If

```dart
void main() {
  // if 문

  int number = 3;

  if (number % 3 == 0) {
    print("나머지가 0입니다.");
  } else if (number % 3 == 1) {
    print("나머지가 1입니다.");
  } else {
    print("나머지가 2입니다.");
  }

  // switch 문

  switch (number % 3) {
    case 0:
      print("나머지가 0입니다.");
      break;
    case 1:
      print("나머지가 1입니다.");
      break;
    default:
      print("나머지가 2입니다.");
      break;
  }
}
```

## loop

```dart
void main() {
  // loop
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  int total = 0;

  List<int> numbers = [1, 2, 3, 4, 5, 6];

  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }

  print(total);

  total = 0;

  for (int number in numbers) {
    if (number == 2) {
      continue;
    }

    total += number;

    if (total > 5) {
      break;
    }
  }

  print(total);

  // while loop
  total = 0;

  while (total < 10) {
    total += 1;

    if (total == 5) {
      break;
    }
  }
  ;

  print(total);

  // do while loop
  total = 0;

  do {
    total += 1;
  } while (total < 10);

  print(total);
}
```

## enum

```dart
enum Status {
  approved, // 승인
  pending, // 대기
  rejected // 거절
}

void main() {
  Status status = Status.approved;

  if (status == Status.approved) {
    print("승인입니다.");
  } else if (status == Status.pending) {
    print("대기입니다.");
  } else if (status == Status.rejected) {
    print("거절입니다.");
  }
}
```

## function

```dart
// void - 공허
void main() {
  addNumbers(x: 1, y: 2, z: 3);
  addNumbers(x: 20, y: 30, z: 40);
  addNumbers(
    x: 30,
    y: 40,
  );

  print(addNumbers(x: 23, y: 42, z: 3));
  print(addNumbers2(23, y: 42, z: 3));

  Operation operation = add;

  int result = operation(1, 2, 3);
  print(result);

  int result2 = calculate(1, 2, 3, subtract);
  print(result2);
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument - 매개변수
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터
// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
int addNumbers({required int x, required int y, int z = 0}) {
  int sum = x + y + z;

  return sum;
}

// arrow function
int addNumbers2(int x, {required int y, int z = 30}) => x + y + z;

typedef Operation = int Function(int x, int y, int z);

// 다하기
int add(int x, int y, int z) => x + y + z;
// 빼기
int subtract(int x, int y, int z) => x - y - z;
// 계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
```

## OOP

객체지향 프로그래밍

```dart
void main() {
  // Idol blackPink = const Idol("블랙핑크", ["지수", "제니", "리사", "로제"]);
  Idol blackPink = _Idol("블랙핑크", ["지수", "제니", "리사", "로제"]);

  // blackPink.name = "김정운"; final선언으로 immutable

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  print(blackPink.firstMember);
  blackPink.firstMember = "김정운";
  print(blackPink.firstMember);

  // print("----------------");
  // print(blackPink == blackPink2);
  // print("----------------");

  _Idol bts = _Idol.fromList([
    ["rm", "v"],
    "bts",
  ]);

  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

// Idol class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
// immutable 프로그래밍 - final, const
// getter / setter
// 데이터를 가져올때 / 데이터를 설정할때
// private _Idol 같은파일에서만 사용이 가능하다.
class _Idol {
  // final String name;
  // final List<String> members;
  String name;
  List<String> members;

  // const Idol(this.name, this.members);
  _Idol(this.name, this.members);

  _Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print("안녕하세요 ${this.name}입니다.");
  }

  void introduce() {
    print("저희 멤버는 ${this.members.join(", ")}입니다.");
  }

  // getter
  // 왜 함수를 만들지않나? 기능적인 차이는 없다.
  String get firstMember {
    return this.members[0];
  }

  // setter
  // immutable 선언 해놓으면? 불가하다 현대에선 거의 불필요하다 setter는
  set firstMember(String name) {
    this.members[0] = name;
  }
}
```

### 상속

```dart
void main() {
  print("------ Idol ------");
  Idol apink = Idol(name: "에이핑크", membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  print("------ BoyGroup ------");
  BoyGroup bts = BoyGroup("bts", 7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  print("------ GirlGroup ------");
  GirlGroup redVelvet = GirlGroup("Red Velvet", 5);
  redVelvet.sayName();
  redVelvet.sayMembersCount();
  redVelvet.sayFemale();

  print("------ Type Comparison ------");
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print("------ Type Comparison 2 ------");
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print("------ Type Comparison 3 ------");
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

// 상속 - inheritance
//
// 상속을 받으면 부모 클래스의 모든 속성을
// 자식 클래스가 부여 받는다.
class Idol {
  // 이름
  String name;
  // 멤버 숫자
  int membersCount;

  Idol({required this.name, required this.membersCount});

  void sayName() {
    print("저는 ${this.name}입니다.");
  }

  void sayMembersCount() {
    print("${this.name}은 ${this.membersCount}명의 멤버가 있습니다.");
  }
}

class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayMale() {
    print("저는 남자 아이돌입니다.");
  }
}

class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount)
      : super(name: name, membersCount: membersCount);

  void sayFemale() {
    print("저는 여자 아이돌입니다.");
  }
}
```

## method override

method - class 내부에 있는 함수
override - 덮어쓰다 (우선시하다)

```dart
void main() {
  TimesTwo tt = TimesTwo(2);

  print(tt.calculate());

  TimesFour tf = TimesFour(2);

  print(tf.calculate());
}

class TimesTwo {
  final int number;

  TimesTwo(
    this.number,
  );

  int calculate() {
    return this.number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  @override
  int calculate() {
    return super.calculate() * 2;
  }
}
```

### static

```dart
void main() {
  Employee seulgi = Employee("seulgi");
  Employee kjw = Employee("정운");

  Employee.building = "test";

  seulgi.printNameAndBuilding();
  kjw.printNameAndBuilding();

  Employee.printBuilding();
}

class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속된다.

  // 알바생이 일하고 있는 건물
  static String? building;
  // 알바생 이름
  final String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print("제 이름은 ${this.name} 입니다. ${building} 건물에서 근무하고 있습니다.");
  }

  static void printBuilding() {
    print("저는 ${building} 건물에서 근무중입니다.");
  }
}
```

### interface

```dart
 void main() {
  BoyGroup bts = BoyGroup("bts");
  GirlGroup redVelvet = GirlGroup("redVelvet");

  bts.sayName();
  redVelvet.sayName();
}

// interface
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName();
}

class BoyGroup implements IdolInterface {
  String name;

  BoyGroup(this.name);

  void sayName() {
    print("제 이름은 ${this.name} 입니다.");
  }
}

class GirlGroup implements IdolInterface {
  String name;

  GirlGroup(this.name);

  void sayName() {
    print("제 이름은 ${this.name} 입니다.");
  }
}
```

### generic

```dart
void main() {
  Lecture<String, String> lecture1 = Lecture(123, "test");

  lecture1.printIdType();

  Lecture<int, int> lecture2 = Lecture(123, 123);
  lecture2.printIdType();
}

// generic - 타입을 외부에서 받을때 사용
class Lecture<T, X> {
  final T id;
  final X name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}
```

## Functional Programming

### 형변환

```dart
void main() {
  List<String> kjw = ["k", "j", "k"];

  print(kjw);
  print(kjw.asMap());
  print(kjw.toSet());

  Map kjwMap = kjw.asMap();

  print(kjwMap.keys.toList());
  print(kjwMap.values.toList());

  Set kjwSet = Set.from(kjw);

  print(kjwSet.toList());
}
```

### list mapping

```dart
void main() {
  List<String> kjw = ["k", "j", "k"];

  final kjw2 = kjw.map((x) {
    return "김 $x";
  });

  print(kjw2.toList());

  final newKjw = kjw.map((x) => "김 $x");

  print(newKjw.toList());

  print(kjw == kjw);
  print(newKjw == kjw);
  print(kjw2 == newKjw);

  // [1.jpg, 3.jpg, 5.jpg, 7.jpg, 9.jpg]
  String number = "13579";

  final parsed = number.split("").map((x) => "$x.jpg").toList();
  print(parsed);
}
```

### Map mapping

```dart
void main() {
  Map<String, String> harryPotter = {
    "Harry Potter": "해리포터",
    "Ron Weasley": "론 위즐리"
  };

  final result = harryPotter.map((key, value) =>
      MapEntry("Harry Potter Character $key", "해리포터 캐릭터 $value"));

  print(harryPotter);
  print(result);

  final keys = harryPotter.keys.map((x) => "HPC $x").toList();
  final values = harryPotter.values.map((x) => "해리포터 $x").toList();

  print(keys);
  print(values);
}
```

### Set mapping

```dart
void main() {
  Set kjw = {"k", "j", "w"};

  final newSet = kjw.map((x) => "김 $x").toSet();

  print(newSet);
}
```

### List where

```dart
void main() {
  List<Map<String, String>> people = [
    {
      "name": "k",
      "group": "k1",
    },
    {
      "name": "j",
      "group": "j2",
    },
    {
      "name": "u",
      "group": "u3",
    }
  ];

  print(people);

  final result = people.where((x) => x["group"] == "k1");

  print(result);
}
```

### List reduce

```dart
void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  numbers.reduce((prev, next) {
    print("------------");
    print("previous $prev");
    print("next $next");
    print("total : ${prev + next}");

    return prev + next;
  });

  List<String> words = ["안", "녕", "하", "세", "요"];

  final sentence = words.reduce((prev, next) => prev + next);

  print(sentence);

  // 리턴되는 값이 선언된 값과 똑같아야 한다.
  // words.reduce((prev, next) => prev.length + next.length);
}
```

## 비동기 프로그래밍

### future async await

```dart
void main() async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value("kjw");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print("함수 시작");

  // 2개의 파라미터
  // delayed - 지연되다.
  // 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수.
  Future.delayed(Duration(seconds: 2), () {
    print("Delay 끝");
  });

  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(2, 2);

  print("result1: $result1");
  print("result2: $result2");
  print("result1 + result2: ${result1 + result2}");
}

Future<int> addNumbers(int number1, int number2) async {
  print("계산 시작: $number1 + $number2");

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print("계산 완료: $number1 + $number2 = ${number1 + number2}");
  });

  print("함수 완료: $number1 + $number2");

  return number1 + number2;
}
```

### Stream

```dart
import "dart:async";

void main() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream();

  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val) {
    print("Listener 1: $val");
  });
  final streamListener2 = stream.where((val) => val % 2 == 1).listen((val) {
    print("Listener 2: $val");
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
```

```dart
import "dart:async";

void main() {
  calculate(2).listen((val) {
    print("calculate(1): $val");
  });

  calculate(4).listen((val) {
    print("calculate(1): $val");
  });

  playAllStream().listen((val) {
    print(val);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1);
  yield* calculate(1000);
}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}
```

## 새문법

### Record

```dart
void main() {
  final result = nameAndAge({"name": "kjw", "age": 30});

  print(result.$1);
  print(result.$2);

  final result2 = getKjwRecord();

  for (final item in result2) {
    print(item.$1);
    print(item.$2);
  }

  final result3 = getKjwRecordTypeName();

  for (final item in result3) {
    print(item.$1);
    print(item.$2);
  }

  final result4 = getKjwRecordTypeNameObj();

  for (final item in result4) {
    print(item.name);
    print(item.age);
  }
}

// Record - 타입의 순서를 보장받을 수 있다.
(String, int) nameAndAge(Map<String, dynamic> json) {
  return (json["name"] as String, json["age"] as int);
}

List<Map<String, dynamic>> getKjw() {
  return [
    {
      "name": "k",
      "age": 1,
    },
    {"name": "j", "age": 2}
  ];
}

List<(String, dynamic)> getKjwRecord() {
  return [
    (
      "k",
      1,
    ),
    ("j", 2)
  ];
}

List<(String name, int age)> getKjwRecordTypeName() {
  return [
    (
      "k",
      1,
    ),
    ("j", 2)
  ];
}

List<({String name, int age})> getKjwRecordTypeNameObj() {
  return [
    (
      name: "k",
      age: 1,
    ),
    (name: "j", age: 2)
  ];
}

(String name, String group, int age) getKjws() {
  return ("k", "j", 1);
}
```

### destructuring

```dart
void main() {
  final (kjw$1, kjw$2) = ("kjw", 30);

  print(kjw$1);
  print(kjw$2);

  final kjw = ["k", "j", "w"];

  final [String a, String b, String c] = kjw;

  print(a);
  print(b);
  print(c);

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

  final [x, y, ..., z] = numbers;

  print(x);
  print(y);
  print(z);

  final [xx, _, yy, ...rest, zz, _] = numbers;

  print(xx);
  print(yy);
  print(rest);
  print(zz);

  final kjwMap = {"name": "kjw", "age": 30};
  final {"name": name2, "age": age2} = kjwMap;

  print(name2);
  print(age2);

  final kjwClass = Kjw(name: "kjw", age: 30);

  final Kjw(name: name3, age: age3) = kjwClass;

  print(name3);
  print(age3);
}

// destructuring
class Kjw {
  final String name;
  final int age;

  Kjw({required this.name, required this.age});
}
```

### 패턴매칭

```dart
void main() {
  // Validation

  final kjw = ("kjw", 30);

  final (name as String, age as int) = kjw;

  print(name);
  print(age);

  switcher("aaa");
//   switcher("bbb");
//   switcher(["1", "2"]);
//   switcher([1, 2]);
//   switcher([1, 2, 3]);
//   switcher([4, 5, 6]);
//   switcher([4, 5, 6, 7]);
//   switcher([6, 8]);
//   switcher(["6", "8"]);
  print(18);
  print(switcher2(5, true));
  print(switcher2(7, true));
  print(switcher2(7, false));
}

// 패턴매칭

void switcher(dynamic anything) {
  switch (anything) {
    case "aaa":
      print("match : aaa");
    case ["1", "2"]:
      print("match : [1, 2]");
    case [_, _, _]:
      print("match : [_, _, _]");
    case [int a, int b]:
      print("match : [int $a, int $b]");
    case < 10 && > 5:
      print("match : < 10 && > 5");
    default:
      print("no match");
  }
}

String switcher2(dynamic val, bool condition) => switch (val) {
      5 => "match: 5",
      7 when condition => "match 7 and true",
      _ => "no match"
    };

void forLooper() {
  final List<Map<String, dynamic>> kjw = [
    {"name": "k", "age": 1},
    {"name": "j", "age": 2}
  ];

  for (final asd in kjw) {
    print(asd["name"]);
    print(asd["age"]);
  }

  for (final asd in kjw) {
    print(asd["name"]);
    print(asd["age"]);
  }
}
```

### class 관련

```dart
void main() {}

// final로 클래스를 선언하면
// extends, implement, 또는 mixin으로 사용이 불가능하다.

// base로 선언하면 extends는 가능하지만 implement는 불가능하다.
// base, sealed, final로 선언된 클래스만 extend가 가능하다.
base class Person {
  final String name;
  final String age;

  Person({
    required this.name,
    required this.age,
  });
}

// interface로 선언하면 implement만 가능하다.
interface class Person {
  final String name;
  final String age;

  Person({
    required this.name,
    required this.age,
  });
}

// sealed 클래스는 abstract이면서 final이다.
// 그리고 패턴매칭을 사용 할 수 있도록 해준다.
sealed class Person {
  final String name;
  final String age;

  Person({
    required this.name,
    required this.age,
  });
}

// Mixin
// 1) Mixin은 extends나 with을 사용할 수 없다. 그렇게때문에 mixin class도 마찬가지로 사용 불가능하다.
// 2) 클래스는 on 키워드를 사용 할 수 없다. 그렇기때문에 mixin class도 on 키워드를 사용할 수 없다.
mixin class AnimalMixin {
  String bark() {
    return "멍멍";
  }
}

class Dog with AnimalMixin {}
```
