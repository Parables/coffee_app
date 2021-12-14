import 'package:coffee_app/models/app_state.dart';
import 'package:coffee_app/models/cart_item.dart';
import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/widgets/cart_list_item.dart';
import 'package:coffee_app/widgets/checkout_details.dart';
import 'package:coffee_app/widgets/my_bottom_nav_bar.dart';
import 'package:coffee_app/widgets/pay_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context, listen: true);
    List<CartItem> cart = appState.cart.values.toList();

    return Scaffold(
      backgroundColor: AppColors.eerieBlackOne,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Cart",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Centaur',
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer<AppState>(
            builder: (context, appState, child) => cart.isEmpty
                ? const Center(
                    child: Text(
                      "🥺\n🙏\n\n Please buy a coffee",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemCount: cart.length,
                          itemBuilder: (BuildContext context, int index) {
                            CartItem cartItem = cart[index];
                            return CartListItemWidget(cartItem: cartItem);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 15);
                          },
                        ),
                      ),
                      const CheckoutDetailsWidget(),
                      const PayButtonWidget(),
                      const SizedBox(height: 10),
                    ],
                  ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavBarWidget(activeMenu: 2),
    );
  }
}
