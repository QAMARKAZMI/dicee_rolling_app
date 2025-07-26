import 'package:flutter/material.dart';

class DiceeScreen extends StatefulWidget {
  const DiceeScreen({super.key});

  @override
  State<DiceeScreen> createState() => _DiceeScreenState();
}

class _DiceeScreenState extends State<DiceeScreen> {
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
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1.0,
                  offset: Offset(10, 20),
                ),
              ],
            ),
            height: 1.0,
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: Row(children: [Image.asset(width: 1000, "images/dicee1.png")]),
    );
  }
}
