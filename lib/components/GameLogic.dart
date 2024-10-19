// ignore: file_names
import 'dart:math';

class GameLogic {
  int rightImageNumber = 1;
  int leftImageNumber = 2;

  void generateRandomImages() {
    rightImageNumber = Random().nextInt(8) + 1;
    leftImageNumber = Random().nextInt(8) + 1;
  }

  bool checkMatch() {
    return leftImageNumber == rightImageNumber;
  }
}
