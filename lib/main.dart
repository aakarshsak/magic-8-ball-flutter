import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.teal[600],
        ),
        body: Balls(),
      ),
    ),
  );
}

class Balls extends StatefulWidget {
  @override
  _BallsState createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int ballValue = 1;

  void setBallValue() {
    setState(() {
      ballValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightGreen[600],
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setBallValue();
                },
                child: Image.asset('images/ball$ballValue.png'),
              ),
            ),
          ],
        ));
  }
}
