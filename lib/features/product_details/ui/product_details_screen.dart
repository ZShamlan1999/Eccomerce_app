import 'package:ecommerce_application/core/constant.dart/specing.dart';
import 'package:ecommerce_application/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/product_detials_controller.dart';
import '../../../core/class/crud.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../widget/product_detials_item.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ProductDetailsControllerImp controller =
        Get.put(ProductDetailsControllerImp());
    Get.lazyPut(() => Crud());
    return GetBuilder<ProductDetailsControllerImp>(
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorsManger.bacground,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      color: ColorsManger.arrowBack)),
            ),
            bottomSheet: Container(
              padding: EdgeInsets.only(left: 16.0.w, right: 20.0.w),
              decoration: const BoxDecoration(
                  color: ColorsManger.white,
                  border: BorderDirectional(
                      top: BorderSide(color: ColorsManger.white, width: 2))),
              height: 84.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextButton(
                    buttonText: 'Add to cart',
                    textStyle: TextStyles.font13WhiteRegular,
                    borderRadius: 13.r,
                    onPressed: () {},
                    buttonWidth: 120.w,
                    buttonHeight: 30.h,
                    horizontalPadding: 0,
                  ),
                  horizontalSpace(16),
                  controller.isLoading == true
                      ? const Text('')
                      : Text('${controller.item['price'].toString()} RY',
                          style: TextStyles.font18BlackRegular),
                ],
              ),
            ),
            body: const ProductDetialsItem());
      },
    );
  }
}
