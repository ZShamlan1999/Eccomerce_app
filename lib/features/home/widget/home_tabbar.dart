import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant.dart/specing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_form_field.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/svgs/Rectangle 26.svg'),
              horizontalSpace(4),
              Text(
                'Home',
                style: TextStyles.font28BlackSemiBold,
              ),
            ],
          ),
          verticalSpace(16),
          AppTextFormField(
            backgroundColor: ColorsManger.grey,
            hintText: 'Search',
            contentPadding: EdgeInsets.only(top: 16.h),
            hintStyle: TextStyles.font18BlackMedium,
            textAlign: TextAlign.left,
            prefixIcon: Icon(
              Icons.search,
              color: ColorsManger.black,
              size: 25.sp,
            ),
            width: double.infinity,
            height: 42.h,
          ),
        ],
      ),
    );
  }
}
