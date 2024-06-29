import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controller/home_controller.dart';
import '../../../core/theming/colors.dart';
import 'list_view_category_item.dart';

class ListViewCategories extends StatelessWidget {
  const ListViewCategories({super.key, required this.allCategories});

  final List allCategories;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
      builder: (controller) {
        return Container(
          color: ColorsManger.bacground,
          height: 50.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: allCategories.length,
            itemBuilder: (context, index) {
              return ListViewCategoryItem(
                item: allCategories[index],
                index: index,
                currentIndex: controller.currentIndex,
                onTap: () {
                  controller.changeIndex(index);
                  index != 0
                      ? controller
                          .getAllProductsInCategory(allCategories[index])
                      : controller.getAllProducts();
                },
              );
            },
          ),
        );
      },
    );
  }
}
