import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RoatatedSideMenu extends StatelessWidget {
  const RoatatedSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      decoration: const BoxDecoration(
          color: AppColors.temptress,
          borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
      // TODO: Use TabBar for easy swtiching pages
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        // map through the list to generate the children for the ListView
        children: [
          'Cappuccino',
          'Latte',
          'Americano',
          'Esperesso',
          'Flat White',
        ]
            .map((category) =>
                // the padding is what is used to space the text vertically
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: RotatedBox(
                    // rotate 3 quarters in the clockwise direction from the origin
                    quarterTurns: 3,
                    child: Text(
                      category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Centaur',
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
