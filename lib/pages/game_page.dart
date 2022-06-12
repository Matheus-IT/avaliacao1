import 'package:flutter/material.dart';

import '../components/regular_text.dart';
import '../consts/game_primary_background.dart';
import '../models/player.dart';
import '../components/accent_text.dart';
import '../components/game_choice_icon.dart';
import '../components/play_area.dart';
import '../consts/colors.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final player = Player(profile: Profile.person);
  final computer = Player(profile: Profile.computer);

  String battleMessage = 'Faça sua jogada';

  String _translateGameElement(GameElement element) {
    /// Translates the game element to a portuguese string
    switch (element) {
      case GameElement.rock:
        return 'pedra';
      case GameElement.paper:
        return 'papel';
      case GameElement.scissors:
        return 'tesoura';
    }
  }

  void handleElementChosen(GameElement chosenElement) {
    if (chosenElement == GameElement.rock &&
        player.lastChosen == GameElement.rock) {
      battleMessage = 'Você não pode jogar pedra duas vezes!';
      setState(() => battleMessage);
      return;
    }

    GameElement computerChoice = computer.choose();

    battleMessage = 'Computador jogou ${_translateGameElement(computerChoice)}';

    if (_playerHasWon(chosenElement, computerChoice)) {
      player.increasePoints();
      battleMessage += ' Você ganhou';
    } else if (chosenElement == computerChoice) {
      battleMessage += ' Empate';
    } else {
      computer.increasePoints();
      battleMessage += ' Você perdeu';
    }

    debugPrint('Computer ${computer.points}');
    debugPrint('Player ${player.points}');
    debugPrint('-------------------------------------');

    // Store as the last chosen for future evaluation
    player.lastChosen = chosenElement;
    computer.lastChosen = computerChoice;

    setState(() => battleMessage);
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
                  title: battleMessage,
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
