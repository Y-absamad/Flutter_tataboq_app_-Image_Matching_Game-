import 'package:flutter/material.dart';

class Imagecard extends StatelessWidget {
  final int imageNumber;
  final VoidCallback onPressed;

  const Imagecard({super.key, required this.imageNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Image.asset('images/image-$imageNumber.png'),
      ),
    );
  }
}
