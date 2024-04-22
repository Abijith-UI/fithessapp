import 'package:flutter/material.dart';
import 'color.dart';

enum RoundButtonType { primary, primaryText }

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  final RoundButtonType type;

  const RoundButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.fontSize = 20,
      this.fontWeight = FontWeight.w700,
      this.type = RoundButtonType.primary,
      required Text child});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor: type == RoundButtonType.primary
          ? Colors.white
          : const Color(0xffFF9B70),
      color: type == RoundButtonType.primary ? Color(0xffFF9B70) : TColor.white,
      height: 50,
      minWidth: double.maxFinite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Text(
        title,
        style: TextStyle(
            color:
                type == RoundButtonType.primary ? TColor.white : TColor.primary,
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }
}
