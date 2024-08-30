import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const GradientButton({
    required this.onPressed,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF4480F1), Color(0xFFA41919)], // Define your gradient colors
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8.0)), // Adjust the radius as needed
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Adjust padding as needed
        child: child,
      ),
    );
  }
}

// Usage in your UI

