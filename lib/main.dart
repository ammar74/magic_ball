import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey.shade600,
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            changeAnswer();
          },
          child: Image.asset('images/ball$ballNum.png'),
        ),
      ),
    );
  }

  void changeAnswer() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }
}
