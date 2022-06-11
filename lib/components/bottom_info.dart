import 'package:flutter/material.dart';
import '../consts/colors.dart';

class BottomLabel extends StatelessWidget {
  const BottomLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor3,
      width: 150,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: const [
            Text('Adaline Nogueira, Matheus Costa, Thiago Vinicios',
            style: TextStyle(
              fontSize: 15,
              color: kMidnight,
              fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
    );
  }
}
