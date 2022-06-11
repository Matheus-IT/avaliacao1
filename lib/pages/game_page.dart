import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/components/regular_text.dart';
import 'package:prog4_avaliacao1/consts/game_primary_background.dart';

import '../components/accent_text.dart';
import '../consts/colors.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  void checkPlayerMove() {
    return debugPrint('Pedra');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColor3,
        title: const AccentText(content: 'Jokenpô', fontSize: 46.0),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                RegularText(
                  content: 'P: 1',
                  fontSize: 25,
                  color: kBlack,
                ),
                SizedBox(
                  width: 10,
                ),
                RegularText(
                  content: 'M: 0',
                  fontSize: 25,
                  color: kBlack,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: kGamePrimaryBackground,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/enemy.png'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 260,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kColor3,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15))),
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        const RegularText(
                          content: 'Faça sua jogada',
                          fontSize: 25,
                          color: kBlack,
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () => checkPlayerMove(),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'lib/assets/icons/rock.png'),
                                    ),
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => checkPlayerMove(),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      //image: const DecorationImage(image: AssetImage('')),
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(70)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => checkPlayerMove(),
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      //image: const DecorationImage(image: AssetImage('')),
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(70)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
