import 'package:flutter/material.dart';

class GameChoiceIcon extends StatelessWidget {
  final String imgPath;
  const GameChoiceIcon({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imgPath,
            ),
          ),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(70),
        ),
      ),
    );
  }
}
