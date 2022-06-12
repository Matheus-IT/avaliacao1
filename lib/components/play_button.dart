import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/pages/game_page.dart';

import '../consts/colors.dart';

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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const GamePage()));
      },
      child: const ImageIcon(
        AssetImage('lib/assets/icons/play_icon.png'),
        color: kBlack,
      ),
    );
  }
}
