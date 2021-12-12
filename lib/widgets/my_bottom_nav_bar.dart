import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/views/cart_page.dart';
import 'package:coffee_app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
    required this.activeMenu,
  }) : super(key: key);

  final int activeMenu;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.eerieBlackTwo,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: Icon(
                IconlyBold.home,
                color: activeMenu == 1 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              icon: Icon(
                IconlyBold.buy,
                color: activeMenu == 2 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyBold.heart,
                color: activeMenu == 3 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyBold.notification,
                color: activeMenu == 4 ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
