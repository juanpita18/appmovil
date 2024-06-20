import 'package:go_router/go_router.dart';
import 'package:myapp/views/create_update_view.dart';
import 'package:myapp/views/home_view.dart';
import 'package:myapp/views/products_list.dart';

import '../views/product_detail.dart';

class AppRoutes {
  static String home="/";
  static String createUpdate="/create-update";
  static String productDetail="/product-detail";
  static String productsList = "/products-list";
}
final routesConfig = GoRouter(routes:[
GoRoute(
  path:AppRoutes.home,
  builder: (context, state) => const HomeView(),
  
),
 GoRoute(
  path:AppRoutes.createUpdate,
  builder: (context, state) => const CreateUpdateView(),
),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2022152969.
GoRoute(
  path:'${AppRoutes.productDetail}/:productId',
  builder: (context, state) =>  ProductDetail(
    productId : state.pathParameters['productId'],
  ),
),
GoRoute(
  path:AppRoutes.productsList,
  builder: (context, state) => const ProductsList(),
),
]
);

 