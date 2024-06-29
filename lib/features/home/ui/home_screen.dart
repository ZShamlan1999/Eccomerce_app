import 'package:ecommerce_application/core/constant.dart/specing.dart';
import 'package:ecommerce_application/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/class/crud.dart';
import '../widget/home_tabbar.dart';
import '../widget/list_view_categories.dart';
import '../widget/list_view_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeControllerImp());
    Get.lazyPut(() => Crud());
    return Scaffold(
      backgroundColor: ColorsManger.bacground,
      body: GetBuilder<HomeControllerImp>(
        builder: (controller) {
          return SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(16),
                  const HomeTabBar(),
                  verticalSpace(22),
                  ListViewCategories(allCategories: controller.allCategories),
                  verticalSpace(8),
                  const Divider(color: ColorsManger.grey),
                  verticalSpace(16),
                  const ListViewProducts(),
                  verticalSpace(80),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
