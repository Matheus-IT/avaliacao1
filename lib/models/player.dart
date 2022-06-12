import 'dart:math';

enum Profile {
  computer,
  person,
}

enum GameElement {
  rock,
  paper,
  scissors,
}

class Player {
  Profile profile;
  GameElement? lastChosen;
  int points = 0;

  Player({required this.profile});

  GameElement choose() {
    int randomChosen = Random().nextInt(GameElement.values.length);
    return GameElement.values[randomChosen];
  }

  void increasePoints() {
    points++;
  }
}
