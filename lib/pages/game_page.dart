import 'package:flutter/material.dart';

import '../components/regular_text.dart';
import '../consts/game_primary_background.dart';
import '../models/player.dart';
import '../components/accent_text.dart';
import '../components/game_choice_icon.dart';
import '../components/play_area.dart';
import '../consts/colors.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final player = Player(profile: Profile.person);
  final computer = Player(profile: Profile.computer);

  void handleElementChosen(GameElement chosenElement) {
    if (chosenElement == GameElement.rock &&
        player.lastChosen == GameElement.rock) {
      debugPrint('Play again?');
      return;
    }

    GameElement computerChoice = computer.choose();

    debugPrint('-------------------------------------');
    debugPrint('Computer $computerChoice');
    debugPrint('Player $chosenElement');

    if (_playerHasWon(chosenElement, computerChoice)) {
      player.increasePoints();
    } else if (chosenElement == computerChoice) {
      debugPrint('Draw'); // I don't know what to do...
    } else {
      computer.increasePoints();
    }

    debugPrint('Computer ${computer.points}');
    debugPrint('Player ${player.points}');
    debugPrint('-------------------------------------');

    // Store as the last chosen for future evaluation
    player.lastChosen = chosenElement;
    computer.lastChosen = computerChoice;
  }

  bool _playerHasWon(GameElement playerChoice, GameElement computerChoice) {
    /// rock > defeats > scissors
    /// scissors > defeats > paper
    /// paper > defeats > rock

    return playerChoice == GameElement.paper &&
            computerChoice == GameElement.rock ||
        playerChoice == GameElement.rock &&
            computerChoice == GameElement.scissors ||
        playerChoice == GameElement.scissors &&
            computerChoice == GameElement.paper;
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
                  content: 'P: 0',
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
                PlayArea(
                  title: 'Faça sua jogada',
                  playIcons: [
                    GameChoiceIcon(
                      imgPath: 'lib/assets/icons/rock.png',
                      onElementChosen: () =>
                          handleElementChosen(GameElement.rock),
                    ),
                    GameChoiceIcon(
                      imgPath: 'lib/assets/icons/scissors.png',
                      onElementChosen: () =>
                          handleElementChosen(GameElement.scissors),
                    ),
                    GameChoiceIcon(
                      imgPath: 'lib/assets/icons/paper.png',
                      onElementChosen: () =>
                          handleElementChosen(GameElement.paper),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
