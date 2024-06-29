import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class ListViewCategoryItem extends StatelessWidget {
  final Function()? onTap;
  final int? currentIndex;
  final int? index;
  final String? item;
  const ListViewCategoryItem({
    super.key,
    this.onTap,
    this.index,
    this.item,
    this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: index == 0 ? 8.w : 16.w, end: index == 0 ? 8.w : 16.w),
        child: Container(
          // width: 120.w,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: currentIndex == index
                    ? ColorsManger.orange
                    : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                item ?? 'SDDD',
                style: TextStyles.font18BlackMedium.copyWith(fontSize: 16.sp),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
