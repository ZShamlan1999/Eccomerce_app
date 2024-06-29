import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 20,
      color: ColorsManger.dividerColor,
      endIndent: 20,
    );
  }
}