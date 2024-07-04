import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/routes/app_routes.dart';
import 'package:myapp/types/product.dart';
import 'package:go_router/go_router.dart';

import '../providers/product_provider.dart';
import '../widgets/card_item_product.dart';
import '../widgets/drawer_widget.dart';

class ProductsList extends ConsumerWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productProv = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("List products View"),
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: productProv.when(
            data: (List<Product> lp) {
              return lp.map((product) {
                return GestureDetector(
                  onTap: () {
                    context.push('${AppRoutes.productDetail}/${product.id}');
                  },
                  child: CardItemProduct(
                    id: product.id,
                    url: product.urlImage,
                    name: product.name,
                    price: product.price,
                    stock: product.stock,
                    description: product.description,
                  ),
                );
              }).toList();
            },
            error: (obj, err) => [Text(err.toString()), const Text('===='), Text(obj.toString())],
            loading: () => [const CircularProgressIndicator()],
          ),
        ),
      ),
    );
  }
}
