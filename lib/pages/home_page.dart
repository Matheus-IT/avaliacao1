import 'package:flutter/material.dart';

import '../components/accent_text.dart';
import '../components/bottom_info.dart';
import '../components/play_button.dart';
import '../components/regular_text.dart';
import '../consts/game_primary_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kGamePrimaryBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              RegularText(
                content: 'Mestres',
                fontSize: 66.0,
                withShadows: true,
              ),
              RegularText(
                content: 'do',
              ),
              AccentText(content: 'Jokenpô'),
              SizedBox(
                height: 30.0,
              ),
              PlayButton(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomLabel(),
    );
  }
}
