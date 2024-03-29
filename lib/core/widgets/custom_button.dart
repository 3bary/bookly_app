import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backgroundColor, this.borderRadius, required this.text, required this.textColor, this.onPressed}) : super(key: key);
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final Color textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ??  BorderRadius.circular(16)
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
