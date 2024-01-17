import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor; // Add this line

  const Button({
    required this.buttonColor,
    required this.buttonText,
    this.textColor = Colors.black, // Default text color is black
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: () {
        // Add your logic here
      },
      color: buttonColor,
      textColor: textColor, // Set text color
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
