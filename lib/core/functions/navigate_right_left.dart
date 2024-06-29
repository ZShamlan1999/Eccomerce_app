import 'package:flutter/animation.dart';
import 'package:get/get.dart';

// MyServices myServices = Get.find();
void navigateFromLeft(dynamic page) {
  Get.to(
    page,
    transition: Transition.rightToLeft,
    curve: Curves.easeInOut,
    duration: const Duration(milliseconds: 300),
  );
}
