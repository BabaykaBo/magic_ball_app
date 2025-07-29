import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          title: const Text(
            'Magic Ball',
            style: TextStyle(color: Colors.white70, fontSize: 28),
          ),
          backgroundColor: Colors.blue[700],
          centerTitle: true,
        ),
        body: const Center(child: BallWidget()),
      ),
    );
  }
}

class BallWidget extends StatefulWidget {
  const BallWidget({super.key});

  @override
  State<BallWidget> createState() => _BallWidgetState();
}

class _BallWidgetState extends State<BallWidget> {
  @override
  Widget build(BuildContext context) {
    int number = _getNumber();
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 700, minWidth: 400),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: TextButton(
          onPressed: () {
            setState(() {
              number = _getNumber();
            });
          },
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }

  int _getNumber() {
    return Random().nextInt(5) + 1;
  }
}
