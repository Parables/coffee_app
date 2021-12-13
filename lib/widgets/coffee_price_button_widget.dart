import 'package:coffee_app/models/app_state.dart';
import 'package:coffee_app/models/product.dart';
import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CoffeePriceButtonWidget extends StatelessWidget {
  const CoffeePriceButtonWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    //Step 1: get an instance of AppState from the Provider
    AppState appState = Provider.of<AppState>(context, listen: false);
    return Material(
      color: AppColors.purpleTaupe,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          appState.addToCart(product);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${product.name} has been added to cart'),
            ),
          );
        },
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              "₹ ${product.price}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.pearl,
              ),
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
