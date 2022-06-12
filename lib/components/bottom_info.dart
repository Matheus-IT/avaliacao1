import 'package:flutter/material.dart';
import '../consts/colors.dart';

class BottomLabel extends StatelessWidget {
  const BottomLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kColor3,
      width: double.infinity,
      height: 50,
      child: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Text(
          'Adaline Nogueira, Matheus Costa, Thiago Vinicios',
          style: TextStyle(
              fontSize: 15, color: kMidnight, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
