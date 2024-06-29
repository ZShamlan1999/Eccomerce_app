import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant.dart/specing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../data/product_model.dart';

class CardListViewWidget extends StatelessWidget {
  final ProductModel productModel;
  final void Function()? onPressed;
  const CardListViewWidget(
      {super.key, required this.productModel, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // height: 157.h,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: ColorsManger.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                height: 137.h,
                width: 135.w,
                decoration: BoxDecoration(
                  color: ColorsManger.cardHomeColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.network(productModel.image.toString()),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${productModel.title}',
                        style: TextStyles.font16LightBlackRegular
                            .copyWith(overflow: TextOverflow.ellipsis),
                      ),
                      verticalSpace(8),
                      SizedBox(
                        height: 20.h,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              horizontalSpace(4),
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SvgPicture.asset('assets/svgs/Star.svg');
                          },
                        ),
                      ),
                      verticalSpace(4),
                      Text('${productModel.price.toString()} RY',
                          style: TextStyles.font18BlackRegular
                              .copyWith(fontSize: 14.sp)),
                      verticalSpace(8),
                      Row(
                        children: [
                          AppTextButton(
                            buttonText: 'Add to cart',
                            textStyle: TextStyles.font13WhiteRegular,
                            borderRadius: 13.r,
                            onPressed: onPressed!,
                            buttonWidth: 120.w,
                            buttonHeight: 30.h,
                            horizontalPadding: 0,
                          ),
                          horizontalSpace(16),
                          Icon(
                            Icons.favorite_border,
                            color: ColorsManger.grey,
                            size: 30.sp,
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
