import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  final String content;

  const RegularText({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        fontFamily: 'LDFComicSans',
        fontSize: 30.0,
      ),
    );
  }
}
