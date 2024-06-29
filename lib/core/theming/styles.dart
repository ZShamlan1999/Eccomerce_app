import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font28BlackSemiBold = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManger.black,
  );
  static TextStyle font18BlackRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.black,
  );
  static TextStyle font18BlackMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManger.black,
  );
  static TextStyle font13WhiteRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.white,
  );
  static TextStyle font16LightBlackRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.lightBlack,
  );
  static TextStyle font15LighterGreyRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.regular,
    color: const Color(0xff50555C),
  );
  static TextStyle font16DarkBlueRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: const Color(0xff1D2034),
  );
}
