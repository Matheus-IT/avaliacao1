import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ScoreCounter extends StatelessWidget {
  final int playerPoints;
  final int computerPoints;

  const ScoreCounter(
      {key, required this.playerPoints, required this.computerPoints})
      : super(key: key);

  Widget showScore(int scoreBoard, String player) {
    return Expanded(
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: Colors.black, width: 2),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  player,
                  style: const TextStyle(
                      fontFamily: 'LDFComicSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 10),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            AutoSizeText(
              "$scoreBoard",
              style: const TextStyle(
                fontFamily: 'LDFComicSans',
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        showScore(playerPoints, "Você"),
        showScore(computerPoints, "Computador")
      ],
    );
  }
}
