void main() {
  // forward(5);
  // rainbow();
  // carMaker();
  List<int> lottoFinal = lottoNumber();
  List<int> myFinal = myNumber();

  checkNumber(lottoFinal, myFinal);
}

void forward(int move) {
  for (int i = 1; i <= move; i++) {
    print("$i칸 이동했습니다.");
  }
}

void rainbow() {
  List<String> rainbow = ["빨", "주", "노", "초", "파", "남", "보"];
  for (String rb in rainbow) {
    print(rb);
  }
}

void carMaker() {
  List<String> carMaker = ["BMW", "Benz", "Audi", "Jaguar"];

  carMaker.forEach((maker) {
    print(maker);
  });
}

List<int> lottoNumber() {
  List<int> lottoList =
      (List<int>.generate(45, (i) => i + 1)..shuffle()).sublist(0, 6);

  print("당첨번호 $lottoList");
  return lottoList;
}

List<int> myNumber() {
  List<int> myList =
      (List<int>.generate(45, (i) => i + 1)..shuffle()).sublist(0, 6);

  print("내 추첨번호 $myList");
  return myList;
}

void checkNumber(List<int> lottoSet, List<int> mySet) {
  int match = 0;

  for (int lotto in lottoSet) {
    for (int myNum in mySet) {
      // print("로또번호 = $lotto");
      // print("내 추첨번호 = $myNum");
      if (lotto == myNum) {
        match++;
        print("당첨번호: $myNum");
      }
    }
  }

  print("$match개의 당첨번호가 있습니다!");
}
