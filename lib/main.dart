import 'package:flutter/material.dart';

import 'dart:math';

// Creates a Material App
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

// Creates a Scaffold with
// appbar using Stateless widget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 84, 103, 125),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D4E89),
        title: Text('GeeksforGeeks'),
      ),
      body: Ball(),
    );
  }
}

// Creates a Stateful widget
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            // Random.nextInt(n) returns a random integer from 0 to n-1
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        // Adding images
        child: Image.asset('images/ball$ballNumber.jpg'),
      ),
    );
  }
}
