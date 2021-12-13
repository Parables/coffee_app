import 'package:coffee_app/models/app_state.dart';
import 'package:coffee_app/models/product.dart';
import 'package:coffee_app/widgets/coffee_grid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsGridViewWidget extends StatelessWidget {
  const ProductsGridViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Step 1: get the AppState instance from our Provider
    AppState appState = Provider.of<AppState>(context, listen: false);
    List<Product> allProducts = appState.allProducts;

    return Container(
      padding: const EdgeInsets.only(
        left: 50,
        right: 16,
      ),
      child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 6 / 8.5,
          ),
          itemBuilder: (BuildContext context, int index) {
            Product product = allProducts[index];
            return CoffeeCardGridItemWidget(product: product);
          }),
    );
  }
}
