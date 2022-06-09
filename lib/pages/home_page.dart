import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
          ],
        ),
      ),
    );
  }
}
