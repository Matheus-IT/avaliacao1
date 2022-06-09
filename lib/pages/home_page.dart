import 'package:flutter/material.dart';
import 'package:prog4_avaliacao1/consts/colors.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test1',
              style: TextStyle(
                fontFamily: 'BubbleShine',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Test2',
              style: TextStyle(
                fontFamily: 'LDFComicSans',
                fontSize: 30.0,
              ),
            ),
            Container(
              color: kColor1,
              width: 50,
              height: 50,
            ),
            Container(
              color: kColor2,
              width: 50,
              height: 50,
            ),
            Container(
              color: kColor3,
              width: 50,
              height: 50,
            ),
            Container(
              color: kWhite,
              width: 50,
              height: 50,
            ),
            Container(
              color: kBlack,
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
