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
