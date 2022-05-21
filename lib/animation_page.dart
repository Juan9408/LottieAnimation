import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late PageController _pageController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this);
    _pageController = PageController();
    _pageController.addListener(() {
      _animationController.value = _pageController.page! / 3;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "           Lottie Animacion",
          textAlign: TextAlign.right,
        ),
      ),
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Lottie.asset(
                "assets/lottie/animacion.json",
                controller: _animationController,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: PageView(
                controller: _pageController,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.grey,
                    child: Image.asset("assets/images/orca2.jpg",
                        fit: BoxFit.cover),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.grey,
                    child: Image.asset("assets/images/orca.jpg",
                        fit: BoxFit.cover),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    color: Colors.grey,
                    child: Image.asset(
                      "assets/images/space.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
