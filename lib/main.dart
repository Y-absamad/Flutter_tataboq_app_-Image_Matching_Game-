import 'package:flutter/material.dart';
import 'components/IamgePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: _appBar(),
          body: const IamgePage(),
        ),
      ),
    ),
  );
}


AppBar _appBar(){
  return AppBar(
      title: const Text(
        'تطابق',
        style: TextStyle(
            fontFamily: 'myfont',
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50),
      ),
      centerTitle: true,
      backgroundColor: Colors.indigo[800],
    );
}
