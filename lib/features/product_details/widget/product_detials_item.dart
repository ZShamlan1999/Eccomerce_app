import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/product_detials_controller.dart';
import '../../../core/constant.dart/specing.dart';
import '../../../core/theming/styles.dart';
import 'divider_widget.dart';
import 'product_title_and_faviorte_button.dart';

class ProductDetialsItem extends StatelessWidget {
  const ProductDetialsItem({super.key});

  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    return GetBuilder<ProductDetailsControllerImp>(
      builder: (controller) {
        return controller.isLoading == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 640.h,
                child: SingleChildScrollView(
                  child: Column(
                    // shrinkWrap: true,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 359.h,
                        child: Image.network(controller.item['image'],
                            fit: BoxFit.fill),
                      ),
                      verticalSpace(8),
                      const DividerWidget(),
                      verticalSpace(8),
                      ProductTitleAndFaviorteButton(
                          tital: '${controller.item['title']}'),
                      const DividerWidget(),
                      verticalSpace(8),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Details',
                              style: TextStyles.font16DarkBlueRegular,
                            ),
                            verticalSpace(8),
                            Text(
                              '${controller.item['description']}',
                              style: TextStyles.font15LighterGreyRegular
                                  .copyWith(fontSize: 13.sp, letterSpacing: 1),
                            ),
                            verticalSpace(4),
                            const DividerWidget(),
                            verticalSpace(4),
                            Text(
                              'Rating',
                              style: TextStyles.font16DarkBlueRegular,
                            ),
                            verticalSpace(4),
                            SizedBox(
                              height: 20,
                              child: ListView.builder(
                                itemCount: 3,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return SvgPicture.asset(
                                    'assets/svgs/Star.svg',
                                    width: 30.w,
                                    height: 30.h,
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
