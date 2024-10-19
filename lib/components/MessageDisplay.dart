import 'package:flutter/material.dart';

class MessageDisplay extends StatelessWidget {
  final String messageText;
  final double opacity;

  const MessageDisplay(
      {super.key, required this.messageText, required this.opacity});

  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width * 0.1; // 10% of screen width

    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(seconds: 0),
      child: Text(
        messageText,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontFamily: 'myfont',
        ),
      ),
    );
  }
}
