import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/consts/colors.dart';

import '../components/accent_text.dart';
import '../components/play_button.dart';
import '../components/regular_text.dart';

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
            children: const [
              RegularText(
                content: 'Mestres',
                fontSize: 66.0,
                withShadows: true,
              ),
              RegularText(content: 'do'),
              AccentText(content: 'Jokenpô'),
              SizedBox(
                height: 30.0,
              ),
              PlayButton(),
            ],
          ),
        ),
      ),
    );
  }
}
