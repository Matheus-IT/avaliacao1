import 'package:flutter/material.dart';

import '../consts/typography.dart';

class AccentText extends StatelessWidget {
  final String content;

  const AccentText({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text(
        content,
        style: TextStyle(
          fontFamily: 'BubbleShine',
          fontSize: 66.0,
          shadows: kTextShadows,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 5
            ..color = Colors.black,
        ),
      ),
      Text(
        content,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'BubbleShine',
          fontSize: 66.0,
          shadows: kTextShadows,
        ),
      ),
    ]);
  }
}
