import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

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

          // PageView with pills indicator
          Positioned(
            bottom: 80, // Adjust bottom padding as needed
            left: 20, // Adjust left padding as needed
            // right: 350, // Adjust right padding as needed
            child: Column(
              children: [
                // PageView for swiping between content
                SizedBox(
                  height: 200, // Adjust height based on your content
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    // children: [

                    // ],
                  ),
                ),
                // const SizedBox(height: 20), // Space between PageView and pills
                // Pills Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      height: 04,
                      width: _currentIndex == index ? 30 : 30,
                      decoration: BoxDecoration(
                        color: _currentIndex == index
                            ? Colors.white
                            : const Color(0xFF7D94A0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  }),
                ),
                //   Container(
                //     decoration: const BoxDecoration(
                //       gradient: LinearGradient(
                //         colors: [
                //           Color(0xFF0A4191),
                //           Color(0xFF4480F1)
                //         ], // Define your gradient colors
                //         begin: Alignment.centerLeft,
                //         end: Alignment.centerRight,
                //       ),
                //       borderRadius: BorderRadius.all(
                //           Radius.circular(8.0)), // Adjust the radius as needed
                //     ),
                //     child: MaterialButton(
                //       onPressed: () {},
                //       shape: const RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //       ),
                //       padding: const EdgeInsets.symmetric(
                //           vertical: 15.0,
                //           horizontal: 30.0), // Adjust padding as needed
                //       child: const Row(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           // Add some space between icon and text
                //           Text("Next", style: TextStyle(color: Colors.white)),

                //           Icon(Icons.arrow_right, color: Colors.white),
                //         ],
                //       ),
                //     ),
                //   ),
              ],
            ),
          ),
          Positioned(
            bottom: 20, // Adjust bottom padding as needed
            right: 20, // Adjust right padding as needed
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0A4191),
                    Color(0xFF4480F1),
                  ], // Define your gradient colors
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(15.0)), // Adjust the radius as needed
              ),
              child: MaterialButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 30.0), // Adjust padding as needed
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Add some space between icon and text
                    const Text("Next", style: TextStyle(color: Colors.white)),
                    const SizedBox(width: 15),
                    Image.asset(
                      "assets/images/arrow-right.png",
                      height: 20,
                      // width: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
