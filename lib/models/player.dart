enum Profile {
  computer,
  person,
}

enum GameElements {
  rock,
  paper,
  scissors,
}

class Player {
  Profile profile;
  GameElements? lastPlay;

  Player({required this.profile});
}
