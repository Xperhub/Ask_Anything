import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue.shade100,
        ),
        body: Knowall(),
      ),
    );
  }
}


class Knowall extends StatefulWidget {
  const Knowall({Key key}) : super(key: key);

  @override
  _KnowallState createState() => _KnowallState();
}

class _KnowallState extends State<Knowall> {
  int ballNumber = 1;

  void changeAnswer() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeAnswer();
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ],

        ),
      );
    }
  }