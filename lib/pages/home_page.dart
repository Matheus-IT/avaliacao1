import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/consts/colors.dart';

import '../consts/typography.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kColor1,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mestres',
                style: TextStyle(
                  fontFamily: 'LDFComicSans',
                  fontSize: 66.0,
                  shadows: kTextShadows,
                ),
              ),
              Text(
                'do',
                style: TextStyle(
                  fontFamily: 'LDFComicSans',
                  fontSize: 30.0,
                  shadows: kTextShadows,
                ),
              ),
              Text(
                'Jokenpô',
                style: TextStyle(
                  fontFamily: 'BubbleShine',
                  fontSize: 66.0,
                  shadows: kTextShadows,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kColor3,
                  padding: EdgeInsets.symmetric(
                    horizontal: 64.0,
                    vertical: 16.0,
                  ),
                  side: BorderSide(
                    width: 1.0,
                    color: kBlack,
                  ),
                ),
                onPressed: () {},
                child: ImageIcon(
                  AssetImage('lib/assets/icons/play_icon.png'),
                  color: kBlack,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
