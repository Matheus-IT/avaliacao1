import 'package:flutter/material.dart';

class EnemyCard extends StatelessWidget {
  final String imgFile;
  const EnemyCard({
    Key? key,
    required this.imgFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imgFile), fit: BoxFit.cover)),
    );
  }
}
