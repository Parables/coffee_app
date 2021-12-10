import 'package:coffee_app/widgets/products_grid_view.dart';
import 'package:coffee_app/widgets/rotated_side_menu.dart';
import 'package:flutter/material.dart';

class MainBodyWidget extends StatelessWidget {
  const MainBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Use a GridView.builder to place the products in a grid
        ProductsGridViewWidget(),
        // position the RoatatedSideMenu to fill the left side of the screen
        const Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          child: RoatatedSideMenu(),
        ),
      ],
    );
  }
}
