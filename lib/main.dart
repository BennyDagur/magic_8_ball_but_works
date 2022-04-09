import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: ballPage(),
  ),
);

class ballPage extends StatelessWidget {
  const ballPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Ask me anything'
        ),
      ),
      body: Ball()
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  ballNumber = Random().nextInt(5)+1;
                  print(ballNumber);
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            )
        ),
    ],
    );
  }
}
