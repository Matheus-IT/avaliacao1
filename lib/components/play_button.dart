import 'package:flutter/material.dart';

import '../consts/colors.dart';
import '../pages/game_page.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kColor3,
        padding: const EdgeInsets.symmetric(
          horizontal: 64.0,
          vertical: 16.0,
        ),
        side: const BorderSide(
          width: 1.0,
          color: kBlack,
        ),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const GameScreen()));
      },
      child: const ImageIcon(
        AssetImage('lib/assets/icons/play_icon.png'),
        color: kBlack,
      ),
    );
  }
}
