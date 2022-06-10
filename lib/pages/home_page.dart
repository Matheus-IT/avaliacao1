import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/consts/colors.dart';

import '../components/accent_text.dart';
import '../components/regular_text.dart';
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
              const RegularText(
                content: 'Mestres',
                fontSize: 66.0,
                withShadows: true,
              ),
              const RegularText(content: 'do'),
              const AccentText(content: 'Jokenpô'),
              const SizedBox(
                height: 30.0,
              ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GameScreen()));
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
