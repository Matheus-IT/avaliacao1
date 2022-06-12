import 'package:flutter/material.dart';

import '../consts/colors.dart';
import 'regular_text.dart';

class PlayArea extends StatelessWidget {
  final String title;
  final List<Widget> playIcons;
  final Widget? restartButton;

  const PlayArea({
    Key? key,
    required this.title,
    required this.playIcons,
    this.restartButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kColor3,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
      ),
      height: 250,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            RegularText(
              content: title,
              fontSize: 20,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: playIcons,
              ),
            ),
            if (restartButton != null) restartButton!
          ],
        ),
      ),
    );
  }
}
