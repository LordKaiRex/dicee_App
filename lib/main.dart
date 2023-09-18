import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonPress = 1;
  int rightButtonPress = 1;

  @override
  Widget build(BuildContext context) {
    void forLeftButton() {
      leftButtonPress = Random().nextInt(6)+1;
      rightButtonPress = Random().nextInt(6)+1;//for dice images 1-6
      print('Left button got pressed');
    }// WE COULD JUST REDUCE REPETITION BY CUTTING SET STATE INTO A SINGLE FUNCTION AND PASTE INTO THE TEXT BUTTONS
    void forRightButton() {
      leftButtonPress = Random().nextInt(6)+1;
      rightButtonPress = Random().nextInt(6)+1;//for dice images 1-6
      print('Right button got pressed');
    }
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  forLeftButton();
                });
              },
              child: Image.asset(
                'images/dice$leftButtonPress.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  forRightButton();
                });
              },
              child: Image.asset(
                'images/dice$rightButtonPress.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
