import 'dart:math';

import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  ScreenB({Key? key}) : super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  var height = Random().nextInt(200).toDouble();

  var width = Random().nextInt(200).toDouble();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Zmieniamy kształt')),
        backgroundColor: Colors.cyan[300],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: height,
              width: width,
              color: Colors.purple[400],
            ),
          ),
          // const SizedBox(
          //   width: 20.0,
          //   height: 200.0,
          // ),
          ElevatedButton(
            onPressed: (changeSize),
            child: const Text('kliknij mnie'),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }

  changeSize() {
    setState(() {
      height = Random().nextInt(200).toDouble();
      width = Random().nextInt(200).toDouble();
    });
  }
}
