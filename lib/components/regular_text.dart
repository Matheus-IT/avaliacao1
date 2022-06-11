import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/consts/colors.dart';

import '../consts/typography.dart';

class RegularText extends StatelessWidget {
  final String content;
  final double fontSize;
  final bool withShadows; // Add shadows to text or not
  final Color color;

  const RegularText({
    Key? key,
    required this.content,
    this.fontSize = 30.0,
    this.withShadows = false,
    this.color = kBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontFamily: 'LDFComicSans',
        fontSize: fontSize,
        shadows: withShadows ? kTextShadows : null,
        color: color,
      ),
    );
  }
}
