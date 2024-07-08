## Widget

1. 독립적으로 실행되는 작은 프로그램
2. 주로 바탕화면 등에서 날씨나 뉴스, 생활정보 등을 보여줌
3. 그래픽이나 데이터 요소를 처리하는 함수를 가지고 있음

### flutter in widget

1. ui를 만들고 구성하는 모든 기본 단위 요소 (리액트에서 컴포넌트 개념인듯하다.)
2. 눈에 보이지 않는 요소들까지 widget (레이아웃 컴포넌트)
3. Everything is a widget

### widget type

1. Stateless Widget (상태가 없는 정적이 위젯)

value값을 지속적으로 추적하고 보존함

- 스크린상에 존재만 할 뿐 아무것도 하지 않음
- 어떠한 실시간 데이터도 저장하지 않음
- 어떤 변화(모양, 상태)를 유발시키는 value값을 가지지 않음

2. Stateful widget (계속 움직임이나 변화가 있는 위젯)

이전 상호작용의 어떠한 값도 저장하지 않음

- 사용자의 interaction에 따라서 모양이 바뀜
- 데이터를 받게 되었을 때 모양이 바뀜

### flutter widget tree

1. widget들은 tree 구조로 정리될 수 있음
2. 한 widget내에 얼마든지 다른 widget들이 포함될 수 있음
3. widget은 부모 위젯과 자식 위젯으로 구성
4. parent widget을 widget container라고 부르기도 함

### 정리

1. flutter의 모든것은 widget
2. widget이 전혀 변화가 없으면 stateless widgets
3. widget의 모양이나 상태가 바뀐다면 stateful widgets
4. widget은 tree구조로 구성되어 있다.

## 프로젝트

### pubspec.yaml

프로젝트의 메타데이터를 정의하고 관리함. 버전 디펜던시 라이브러리 등

### android ios

각 플랫폼에 맞게 앱을 배포하기위한 정보들을 가지고 있음.

### test

개발을 원하는 각종 dart관련 코드를 테스트 해볼수 있다.

### lib

메인 작업 폴더

## 클래스명과 함수명

함수명 main(), runApp() // 카멜

클래스명 MyApp() // 파스칼

## class and widget(인스턴스)

프로그래밍 상에서의 클래스란?

- 객체가 가져야 하는 속성과 기능을 정의한 내용을 담고 있는 설계도 역할
  프그래밍 상에서의 객체란?
- 클래스가 정의된 후 메모리상에 할당되었을 때 이를 객체라고 함
  프그래밍 상에서의 인스턴스란?
- 클래스를 기반으로 생성 됨
- 클래스의 속성과 기능을 똑같이 가지고 있고 프로그래밍상에서 사용되는 대상

## App bar icon button

- leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
- actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
- onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을때 일어나는 이벤트를 정의 한 곳

## Build Context

"Scaffold.of() called with a context that does not contain a Scaffold"

"A handle to the location of a widget in the widget tree"
widget tree에서 현재 widget의 위치를 알 수 있는 정보

모든 위젯은 build method를 가지고 있음.

build => scaffold(context)

"Each widget has its own BuildContext, which becomes the parent of the widget returned by the StatelessWidget.build or State.build function."
이 BuildContext는 stateless위젯이나 state 빌드 메서드에 의해서 리턴 된 위젯의 부모가 된다.

Scaffold.of(context) method
현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라.

Thme.of(context)
Something.of(context)

## Container Widget

container with no children try to be as big as possible
컨테이너는 무조건 페이지 내에서 최대한의 공간을 차지하려함.

containers with children size themselves to their children
child에 widget이 있다면 자식크기를 따라감.

widget이 화면밖을 빠져나갈때는 SafeArea widget으로 감싸주면된다.

## Route

Mobile apps typically reveal their contents via full-screen elements called "screens" or "pages" in Flutter these elements are called routes
플러터에서 route는 단순히 스마트폰에서 보여지는 하나의 페이지 또는 화면

## Navigator

navigator manages a stack of Route objects and provides methods for managing the stack, like Navigator.push and Navigator.pop
모든 앱페이지들을 관리하며 stack자료구조 형식으로 route객체들을 관리함. stack자료구조를 관리하기위해 push와 pop 메소드를 제공함

## Collection and Generic

1. String interpolation

문자열을 출력하거나 선언할때 다른 변수를 끼어넣는것

```dart
void main() {
  String name = "Sean";
  print(name);
  print("Hi $name, what's up?");
}
```

2. Collection / Generic

- Collection: 데이터들을 모아서 가지고 있는 자료구조

```dart
int addNumber(int number1, int number2) {
  return number1 + number2;
}

void main() {
  List<int> number = new List();

  number.add(2);
  number.add("test"); // 에러
  number.add(7.4); // 에러
  number.add(addNumber(3, 4));
  number.add(true); // 에러
  print(number);
}
```

- Generic: Collection이 가지고 있는 데이터들의 데이터 타입을 지정

```dart
void main() {
  var circleSlot = new Slot<Circle>();
  circleSlot.insert(new Circle());

  var squareSlot = new Slot<Square>();
  squareSlot.insert(new Square());

  var triangleSlot = new Slot<Triangle>();
  triangleSlot.insert(new Triangle());
}

class Circle {}
class Square {}
class Triangle {}

class Slot<T> {
  insert (T shape) {}
}
```

## State

- State는 데이터이다?
- State란 UI가 변경되도록 영향을 미치는 데이터이다.
- App 수준과 Widget 수준의 데이터가 있다.

### Stateless widget

- State가 변하지 않는 위젯
- Text("Korea") => Text("")

### Widget tree and Element tree

- Reload vs Rebuild

1:1:1
Widget tree - Element tree - Render tree
MyApp - MyApp element - Render Object
Scaffold - Scaffold element - Render Object
AppBar - AppBar element - Render Object
Text - Text element - Render Object

### Widget tree and Element tree

어떤 위젯에 새롭게 코드가 추가되면 새롭게 생성된 위젯의 타입과 위치가 일치하면 포인터만 업데이트함

Container widget change -> Hot reload -> build method -> widget tree rebuild -> element tree link update -> element tree info -> render tree -> render object re-rendering

Stateless 위젯은 rebuild만을 통해서 새로운 State 적용 가능

### Stateful widget

재렌더링 되는 경우

- child 위젯의 생성자를 통해 데이터가 전달 될 때
- internal state가 바뀔 때

### If statement

if (~~면) {
~~ 실행한다
}

### Focus

- FocusNode: 포커스를 받는 특정 위젯을 식별
- FocusScope: 어떤 위젯들까지 포커스를 받는지 범위를 나타냄

## Process vs Program

Photoshop -> HDD, SSD 설치되어 있을 뿐임. 데이터 묶음 (Program)
더블클릭 후 실행되는순간 메모리에 등록되어 process가 됨

### Thread

Dart는 싱글 스레드로 운영되는 언어
한번에 하나의 작업만을 실행함.
작업이 진행중이면 코드상 존재하는 다른작업이 개입할 여지가없음.

### Event loop

1. FIFO 방식으로 Micro Task와 Event 준비
2. main함수 실행
3. Event loop 실행

## Null safety

Null : 아직 값이 정해지지 않은 것

## Wiget lifecycle

initState method
state가 최초로 초기화 될때 호출되는 메소드

build method

dispose method

deactivate method

## Keys

What are the keys?
Flutter는 기본적으로 위젯의 타입으로 식별
Stateful 위젯의 식별을 위해서는 key가 필요

- 위젯이 위젯트리상에서 이동하는 과정에 위젯의 State를 보존하기 원할때
- 위젯이나 요소들을 유니크하게 식별하는 역할

value key

- TextField widget
- Value key는 value값을 가지는 Stateful 위젯에 사용

e.g. TextField(key: ValueKey(1))

Global key

e.g.
final counterKey = GlobalKey<\_CounterState>();

## Stream

즉시 사용가능 기다려야 사용가능
단일 데이터 int Future<int>
복수 데이터 List<int> Stream<int>
