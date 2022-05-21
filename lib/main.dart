import 'package:flutter/material.dart';

import 'animation_page.dart';

void main() {
  runApp(Lottie());
}

class Lottie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lottie Animation",
      //Se quita el modo desmostracion
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimationPage(),
    );
  }
}
