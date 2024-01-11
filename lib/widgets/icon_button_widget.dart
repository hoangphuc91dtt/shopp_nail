import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final dynamic icon;
  final Color bgColor;
  final double width;
  final double height;
  final double borderRadius;
  final Function()? onPressed;
  const IconButtonWidget(
      {super.key, required this.icon, this.height = 40, this.width = 40, this.onPressed, this.bgColor = Colors.transparent, this.borderRadius = 999});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: IconButton(
        icon: icon,
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        onPressed: onPressed,
      ),
    );
  }
}
