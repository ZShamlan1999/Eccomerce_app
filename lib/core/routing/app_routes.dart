import 'package:ecommerce_application/features/product_details/ui/product_details_screen.dart';
import 'package:get/get.dart';

import '../../features/home/ui/home_screen.dart';
import 'routes.dart';

List<GetPage<dynamic>>? appRoutes = [
  GetPage(name: '/', page: () => const HomeScreen()),
  GetPage(
      name: Routes.productDetialsScreen,
      page: () => const ProductDetailsScreen()),
];
