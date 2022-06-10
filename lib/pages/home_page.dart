import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/consts/colors.dart';

import '../consts/typography.dart';
import 'game_page.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: kColor1,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Mestres',
                style: TextStyle(
                  fontFamily: 'LDFComicSans',
                  fontSize: 66.0,
                  shadows: kTextShadows,
                ),
              ),
              const Text(
                'do',
                style: TextStyle(
                  fontFamily: 'LDFComicSans',
                  fontSize: 30.0,
                ),
              ),
               Stack(
                 children:[
                  Text(
                  'Jokenpô',
                  style: TextStyle(
                    //color: Colors.white,
                    fontFamily: 'BubbleShine',
                    fontSize: 66.0,
                    shadows: kTextShadows,
                    foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 5..color = Colors.black,
                  ),
                             ),
               const Text(
                'Jokenpô',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'BubbleShine',
                  fontSize: 66.0,
                  shadows: kTextShadows,
                ),
              ),
            ]),
            const SizedBox(height: 30.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kColor3,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64.0,
                    vertical: 16.0,
                  ),
                  side: const BorderSide(
                    width: 1.0,
                    color: kBlack,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GameScreen()));
                },
                child: const ImageIcon(
                  AssetImage('lib/assets/icons/play_icon.png'),
                  color: kBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
