import 'package:ecommerce_application/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant.dart/specing.dart';
import '../../../core/functions/navigate_right_left.dart';
import '../../product_details/ui/product_details_screen.dart';
import '../data/product_model.dart';
import 'card_list_view_widget.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllerImp>(
      builder: (controller) {
        return Expanded(
          child: controller.isLoading == true
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => verticalSpace(16),
                  itemCount: controller.allProducts.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CardListViewWidget(
                      productModel:
                          ProductModel.fromJson(controller.allProducts[index]),
                      onPressed: () {
                        controller
                            .changeid(controller.allProducts[index]['id']);
                        navigateFromLeft(() => const ProductDetailsScreen());
                      },
                    );
                  },
                ),
        ); 
      },
    );
  }
}
