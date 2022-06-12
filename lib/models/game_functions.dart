import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

Widget getImage(String imgPath, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Image.asset(imgPath));
} 
Widget scoreCounter(int playerPoints, int computerPoints) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      showScore(playerPoints, "Você"),
      showScore(computerPoints, "Computador")
    ],
  );
}

Widget showScore(int scoreBoard, String player) {
  return Expanded(
    child: Card(
      color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(color: Colors.black, width: 2)
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
              fontSize: 18),
            ),
          ],
        ),
      ),
  );
}


