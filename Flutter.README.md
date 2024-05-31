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
