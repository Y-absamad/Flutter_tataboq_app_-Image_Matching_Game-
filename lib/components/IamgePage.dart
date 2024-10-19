// ignore: file_names
import 'package:flutter/material.dart';
import 'ImageCard.dart';

import 'GameLogic.dart';
import 'MessageDisplay.dart';

class IamgePage extends StatefulWidget {
  const IamgePage({super.key});

  @override
  State<IamgePage> createState() => _IamgepageState();
}

class _IamgepageState extends State<IamgePage> {
  final GameLogic gameLogic = GameLogic();
  String messageText = 'اضغط على الصور عشان تبدأ اللعبة';
  double _opacity = 1.0;

  void updateGame() {
    setState(() {
      _opacity = 0.0;
    });
    Future.delayed(const Duration(milliseconds: 150),  (){
      gameLogic.generateRandomImages();

      messageText = gameLogic.checkMatch() ? 'مبروك لقد نجحت' : 'حاول مرة أخرى';

      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MessageDisplay(messageText: messageText, opacity: _opacity),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Imagecard(imageNumber: gameLogic.leftImageNumber, onPressed: updateGame),
            Imagecard(imageNumber: gameLogic.rightImageNumber, onPressed: updateGame),
          ]),
        ),
      ],
    );
  }
}
