import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/components/regular_text.dart';

import '../components/accent_text.dart';
import '../consts/colors.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColor3,
        title: const AccentText(content: 'Jokenpô', fontSize: 46.0),
        actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              RegularText(content: 'P: 1',fontSize: 25, color: kBlack,),
              SizedBox(width: 10,),
              RegularText(content: 'M: 0',fontSize: 25,color: kBlack,),
            ],
           ),
        ),
        ],
      ),
    );
  }
}
