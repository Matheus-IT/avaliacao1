import 'package:flutter/material.dart';

import '../consts/typography.dart';

class AccentText extends StatelessWidget {
  final String content;
  final double fontSize;

  const AccentText({
    Key? key,
    required this.content,
    this.fontSize = 66.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text(
        content,
        style: TextStyle(
          fontFamily: 'BubbleShine',
          fontSize: fontSize,
          shadows: kTextShadows,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 5
            ..color = Colors.black,
        ),
      ),
      Text(
        content,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'BubbleShine',
          fontSize: fontSize,
          shadows: kTextShadows,
        ),
      ),
    ]);
  }
}
