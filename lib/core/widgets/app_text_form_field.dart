import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final double? width;
  final double? height;
  final bool? isObscureText;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String?)? validator;
  final Function(String)? onChanged;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final BoxConstraints? prefixIconConstraints;
  final TextAlign? textAlign;
  final Function(String)? onFieldSubmitted;
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.hintText,
      this.isObscureText,
      this.prefixIcon,
      this.backgroundColor,
      this.controller,
      this.validator,
      this.keyboardType,
      this.onChanged,
      this.width,
      this.prefixIconConstraints,
      this.height,
      this.maxLength,
      this.inputFormatters,
      this.textAlign,
      this.onFieldSubmitted});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 276.w,
      height: height,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,

        textAlign: textAlign ?? TextAlign.center,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        decoration: InputDecoration(
            isDense: true,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(horizontal: 30.w, vertical: 19.h),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none),
            errorBorder: enabledBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none),
            // hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
            hintText: hintText,
            hintStyle: hintStyle,
            fillColor: backgroundColor ?? const Color(0xff0A3F3A),
            //      errorStyle: TextStyles.font13lighterGreenSemiBold,
            filled: true,
            prefixIcon: prefixIcon,
            prefixIconConstraints: prefixIconConstraints),
        // cursorColor: ColorsManger.lighterGreen,
        // style: TextStyles.font18GreenSemiBold,
        validator: (value) {
          return validator!(value);
        },
      ),
    );
  }
}
