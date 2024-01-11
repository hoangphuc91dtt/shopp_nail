import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final dynamic style;
  final String text;
  final Color bgColor;
  final double vertical;
  final double horizontal;
  final double borderRadius;
  final Function()? onPressed;
  const TextButtonWidget(
      {super.key,
      required this.style,
      this.horizontal = 15,
      this.vertical = 10,
      this.onPressed,
      this.bgColor = Colors.transparent,
      this.borderRadius = 999,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
