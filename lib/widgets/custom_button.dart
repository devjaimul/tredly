import 'package:flutter/material.dart';
import 'package:tredly/utils/app_colors.dart';

import '../utils/text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? fontSize;



  const CustomElevatedButton({super.key,
     // default height
  required this.onPressed, required this.buttonText, this.buttonColor, this.textColor, this.borderColor, this.fontSize,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:buttonColor ?? Colors.white,
        side: BorderSide(color: borderColor ?? Colors.white, width: 1),
      ),
      child: HeadingTwo(
        data: buttonText,
        color:textColor ?? AppColors.buttonTextColors,
        fontSize: fontSize?? 18,
      ),
    );
  }
}