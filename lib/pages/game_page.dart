import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/components/regular_text.dart';

import '../components/accent_text.dart';

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
        title: Row(
          children: const [
            AccentText(content: 'Jokenpô', fontSize: 46.0),
            RegularText(content: 'P:1'),
            RegularText(content: 'M:0'),
          ],
        ),
      ),
    );
  }
}
