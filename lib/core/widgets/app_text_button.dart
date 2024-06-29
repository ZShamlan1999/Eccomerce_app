import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.0.r),
          )),
          backgroundColor: MaterialStatePropertyAll(
              backgroundColor ?? ColorsManger.orange),
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(
                  // horizontal: horizontalPadding?.w ?? 12.w,
                  // vertical: verticalPadding?.h ?? 14.w,
                  )),
          fixedSize: MaterialStateProperty.all(Size(
              buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 65.h))),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
