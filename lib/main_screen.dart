import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'core/theming/colors.dart';
import 'features/faviorte/faviorte_screen.dart';
import 'features/cart/cart_screen.dart';
import 'features/home/ui/home_screen.dart';
import 'features/profile/profile_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> tabList = [
    const HomeScreen(),
    const FaviortScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => NavigationBarController(), fenix: true);
    return Scaffold(
      backgroundColor: ColorsManger.white,
      body: GetBuilder<NavigationBarController>(
        builder: (controller) {
          return Stack(
            children: [
              tabList.elementAt(controller.currentIndex),
              Positioned(
                bottom: 0.h,
                left: 0.w,
                right: 0.w,
                child: const BottomNavBarMainScreen(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class BottomNavBarMainScreen extends StatelessWidget {
  const BottomNavBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationBarController>(
      builder: (controller) {
        return Container(
            height: 65.h,
            color: ColorsManger.bottomNavBar,
            // margin: EdgeInsets.symmetric(horizontal: .w),
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CusttomBottomNavBarButton(
                    icon: 'assets/svgs/home.svg',
                    index: 0,
                    initIndex: controller.currentIndex,
                    onPressed: () {
                      controller.changeIndex(0);
                    },
                  ),
                  CusttomBottomNavBarButton(
                    icon: 'assets/svgs/favi.svg',
                    index: 1,
                    initIndex: controller.currentIndex,
                    onPressed: () {
                      controller.changeIndex(1);
                    },
                  ),
                  CusttomBottomNavBarButton(
                      icon: 'assets/svgs/cart.svg',
                      index: 2,
                      initIndex: controller.currentIndex,
                      onPressed: () {
                        controller.changeIndex(2);
                      }),
                  CusttomBottomNavBarButton(
                      icon: 'assets/svgs/profile.svg',
                      index: 3,
                      initIndex: controller.currentIndex,
                      onPressed: () {
                        controller.changeIndex(3);
                      }),
                ]));
      },
    );
  }
}

class CusttomBottomNavBarButton extends StatelessWidget {
  const CusttomBottomNavBarButton({
    super.key,
    required this.index,
    required this.initIndex,
    required this.onPressed,
    required this.icon,
  });

  final String icon;
  final int index;
  final int initIndex;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        //  margin: EdgeInsets.symmetric(vertical: 5.h, horizontal:5.w),
        child: SvgPicture.asset(
          icon,
          width: 30.w,
          height: 30.h,
          // ignore: deprecated_member_use
          color: initIndex == index ? ColorsManger.orange : ColorsManger.grey,
        ),
      ),
    );
  }
}

class NavigationBarController extends GetxController {
  var currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }
}
