import 'package:flutter/material.dart';

class GameChoiceIcon extends StatelessWidget {
  final String imgPath;
  final Function() onElementChosen;

  const GameChoiceIcon({
    Key? key,
    required this.imgPath,
    required this.onElementChosen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onElementChosen,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imgPath,
            ),
          ),
        ),
      ),
    );
  }
}
