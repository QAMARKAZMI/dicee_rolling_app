import 'dart:math';

import 'package:flutter/material.dart';

class DiceeScreen extends StatefulWidget {
  const DiceeScreen({super.key});

  @override
  State<DiceeScreen> createState() => _DiceeScreenState();
}

class _DiceeScreenState extends State<DiceeScreen> {
  int LeftDiceNumber = 1; // class-level variable
  int RightDiceNumber = 1; // class-level variable

  void changeDiceFace() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
      print("Dice Number $LeftDiceNumber pressed");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        backgroundColor: Colors.red,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            height: 1.0,
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset("images/dice$LeftDiceNumber.png"),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset("images/dice$RightDiceNumber.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
