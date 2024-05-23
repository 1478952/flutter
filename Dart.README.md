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
