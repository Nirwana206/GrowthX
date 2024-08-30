import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Positioning the vector image at the top-right with wrapping effect
          Positioned(
            top: 0,
            right: -80, // Move the image partially off the screen
            child: Image.asset(
              "assets/images/Vector.png",
              fit: BoxFit.contain,
              width: 200, // Adjust the width as needed
            ),
          ),
          // Centered main image
          Center(
            child: Image.asset(
              "assets/images/officebg.png",
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          // Positioned "Let's Get Started" text
          const Positioned(
            bottom: 160, // Adjust bottom padding as needed
            left: 20, // Adjust left padding as needed
            right: 200, // Adjust right padding as needed
            child: Text(
              "Let's Get Started",
              style: TextStyle(
                fontSize: 28,
                color: Color(0xFF0F419E),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Positioned descriptive text below "Let's Get Started"
          const Positioned(
            bottom: 100, // Position this text above the bottom
            left: 20, // Adjust left padding as needed
            right: 20, // Adjust right padding as needed
            child: Text(
              "Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF7D94A0),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
