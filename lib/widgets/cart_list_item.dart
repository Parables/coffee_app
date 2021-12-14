import 'package:coffee_app/models/app_state.dart';
import 'package:coffee_app/models/cart_item.dart';
import 'package:coffee_app/models/product.dart';
import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class CartListItemWidget extends StatelessWidget {
  const CartListItemWidget({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context, listen: true);
    final Product product = cartItem.product;
    return Dismissible(
      key: UniqueKey(),
      background: const SizedBox(),
      secondaryBackground: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          decoration: BoxDecoration(
              color: AppColors.peach, borderRadius: BorderRadius.circular(10)),
          child: const Icon(
            IconlyLight.delete,
            color: Colors.white,
          ),
        ),
      ),
      child: Material(
        color: AppColors.darkCharcoal,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Consumer<AppState>(builder: (context, appState, child) {
            CartItem cartItem = appState.cart[product.key]!;

            return Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.square(
                  dimension: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      product.imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.category ?? 'Cappuccino',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        product.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                          color: Colors.grey,
                          // fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Spacer(),
                      Text(
                        '₹ ${(cartItem.qnty! * product.price)}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Material(
                  color: AppColors.purpleTaupe,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.pearl,
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            appState.decreaseQnty(cartItem);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    '${cartItem.product.name} has been decrease to ${cartItem.qnty}'),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.remove,
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "${cartItem.qnty!}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Centaur',
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.pearl,
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            appState.increaseQnty(cartItem);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    '${cartItem.product.name} has been increase to ${cartItem.qnty}'),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.add,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
      ),
      confirmDismiss: (direction) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            "Remove item?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            "${product.name} will be removed from the cart "
            "and you will loose your discount"
            "\n\n Sure you want to do this?",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // remove it cart
                appState.removeFromCart(product);
                return Navigator.pop<bool>(context, true);
              },
              child: const Text(
                'YES',
                style: TextStyle(color: AppColors.eerieBlackOne),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // do nothing
                return Navigator.pop<bool>(context, false);
              },
              child: const Text('NO'),
              style: ElevatedButton.styleFrom(
                primary: AppColors.eerieBlackOne,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
