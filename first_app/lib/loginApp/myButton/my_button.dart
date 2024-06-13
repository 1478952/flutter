import 'package:flutter/material.dart';

// 1. 로고이미지
// 2. 텍스트
// 3. 버튼 색상
// 4. 버튼 모서리 둥글기
// 5. onPresssed 함수
class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.image,
    required this.text,
    required this.color,
    required this.radius,
    required this.onPressed,
  });

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4.0),
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(backgroundColor: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: image,
            ),
          ],
        ),
      ),
    );
  }
}
