import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class ProductTitleAndFaviorteButton extends StatelessWidget {
  final String tital;
  const ProductTitleAndFaviorteButton({super.key, required this.tital});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Text(
          tital,
          style: TextStyles.font15LighterGreyRegular,
        ));
  }
}
