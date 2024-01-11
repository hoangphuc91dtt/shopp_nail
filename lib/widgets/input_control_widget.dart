import 'package:flutter/material.dart';

import '../theme/colors_theme.dart';
import '../theme/typography_theme.dart';

class InputControlWidget extends StatelessWidget {
  final TextEditingController controller;
  final String laber;
  final String? hintText;
  final Color? bgColor;
  final int? lines;
  final Function()? onPressed;
  final Function(String value)? onChange;
  final String? Function(String?)? validator;

  const InputControlWidget({
    super.key,
    required this.controller,
    required this.laber,
    this.bgColor = ColorsTheme.primary,
    this.onPressed,
    this.hintText,
    this.lines = 1,
    this.validator,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          laber,
          style: TypographyTheme.heading5(color: ColorsTheme.primary),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          style: TypographyTheme.text2(),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
            filled: true,
            fillColor: bgColor,
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          ),
          maxLines: lines,
          onChanged: onChange,
          validator: validator,
        ),
      ],
    );
  }
}
