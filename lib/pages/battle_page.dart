import 'dart:math';
import 'package:flutter/material.dart';
import '../components/accent_text.dart';
import '../models/game_functions.dart';
import '../consts/colors.dart';

class BattlePage extends StatefulWidget {
  const BattlePage({Key? key}) : super(key: key);

  @override
  State<BattlePage> createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {


  var gameChoices = [
    "pedra", 
    "papel", 
    "tesoura"
    ];

  final _randomPick = Random();

  var gameplay = {
    "0": " Você perdeu!",
    "1": "Você Venceu!",
    "2": "Empate!.",
    "3": "Falta! Pedra 2x não pode!"
  };

  var battleMessenger = {
   -1: kWhite, //neutral color for the first move
    0: kColor5,
    1: kColor6,
    2: kColor7,
    3: kFault
  };

  int result = -1;
  String computerMove = "";
  int playerPoints = 0;
  int computerPoints = 0;
  int loseCondition = 0;


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColor1,
      appBar: AppBar(
        title: const AccentText(content: 'Jokenpô', fontSize: 46.0),
        backgroundColor: kColor3,
        actions: [SizedBox(
          width: 150,
          child: scoreCounter(playerPoints, computerPoints),
        )
       ],
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        children: <Widget>[
          Stack(
            children:[ 
                Container(
                height: screenSize.height * .45,
                decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage('lib/assets/images/enemy.png'),
                fit: BoxFit.cover,
              ),
             ),
            ),
          ],
        ),
          const SizedBox(
            height: 95),
          Align(
            heightFactor: 1.0,
            child: Container(
              width: 600,
              height: screenSize.height * 35,
              decoration: const BoxDecoration(
              color: kColor3,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
              ),
              child: Column(
                children: [
                  Card(
                    color: battleMessenger[result],
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: 350,height: 55,
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    computerMove == "" || result == -1
                    ? "Faça sua jogada" : "Computador jogou $computerMove. ${gameplay[result.toString()]}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'LDFComicSans',
                    ),
                  ),
                ),
              ),
                  Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        color: kColor3,
                        shape: const CircleBorder(),
                        elevation: 0,
                        child: InkWell(
                          radius: 45,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: kColor4,
                          child: getImage("lib/assets/icons/rock.png", context),                          
                          onTap: () {
                            computerMove = gameChoices[
                            _randomPick.nextInt(gameChoices.length)];
                            result = getWinner("pedra", computerMove);
                            stateChange(result);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: kColor3,
                        shape: const CircleBorder(),
                        elevation: 0,
                        child: InkWell(
                          radius: 45,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: kColor4,
                          child: getImage("lib/assets/icons/paper.png", context),
                            onTap: () {
                              computerMove = gameChoices[
                              _randomPick.nextInt(gameChoices.length)];
                              result = getWinner("papel", computerMove);
                              stateChange(result);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: kColor3,
                        shape: const CircleBorder(),
                        elevation: 0,
                        child: InkWell(
                          radius: 45,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: kColor4,
                          child: getImage("lib/assets/icons/scissors.png", context),
                            onTap: () {
                              computerMove = gameChoices[
                              _randomPick.nextInt(gameChoices.length)];
                              result = getWinner("tesoura", computerMove);
                              stateChange(result);
                          },
                        ),
                      ),
                    ),
                  ],
                 ),
                 const SizedBox(height: 25,),
                  Card(
                    color: kColor4,
                    elevation: 2,
                    child: InkWell(
                      child: Container(
                        width: 100.0,
                        padding: const EdgeInsets.all(5),
                        child: const Text('Reiniciar',textAlign: TextAlign.center,style: TextStyle(color: kWhite),),
                      ),
                      onTap: () {
                        setState(() {
                          playerPoints = 0;
                          computerPoints = 0;
                          computerMove = "";
                          result = -1;
                          loseCondition = 0;
                        });
                      },
                    ),
                  )
               ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  int getWinner(String playerChoice, String computerChoice) {
    if (playerChoice == "pedra"){
      loseCondition++;
    }if(loseCondition > 1){
      return 3;
    }
    if ((playerChoice == "pedra" && computerChoice == "papel") ||
        (playerChoice == "papel" && computerChoice == "tesoura") ||
        (playerChoice == "tesoura" && computerChoice == "pedra")) {
      return 0;
    } else if ((playerChoice == "pedra" && computerChoice == "tesoura") ||
        (playerChoice == "tesoura" && computerChoice == "papel") ||
        (playerChoice == "papel" && computerChoice == "pedra")) {
      return 1;
    } else {
      return 2;
    }
  }

  void stateChange(int result) {
    setState(() {
      if (result == 0) {
        playerPoints = playerPoints;
        computerPoints = computerPoints + 1;
        loseCondition = 0;
      } else if (result == 1) {
        playerPoints = playerPoints + 1;
        computerPoints = computerPoints;
      } else if (result == 3){
        computerPoints = computerPoints + 1;
        loseCondition = 0;
      }else {
        playerPoints = playerPoints;
        computerPoints = computerPoints;
      }
    });
  }
}
