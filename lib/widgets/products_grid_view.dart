import 'package:coffee_app/widgets/coffee_grid_item_widget.dart';
import 'package:flutter/material.dart';

class ProductsGridViewWidget extends StatelessWidget {
  ProductsGridViewWidget({
    Key? key,
  }) : super(key: key);

  final menu = [
    {
      'product_name': 'Cinnamon & Cocoa',
      'price': '99',
      'img_url':
          'https://cdn.pixabay.com/photo/2016/08/09/13/21/coffee-1580595_960_720.jpg',
    },
    {
      'product_name': 'Drizzled with Caramel',
      'price': '199',
      'img_url':
          'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Bursting Blueberry',
      'price': '249',
      'img_url':
          'https://images.pexels.com/photos/1170659/pexels-photo-1170659.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/6341408/pexels-photo-6341408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/302904/pexels-photo-302904.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/433124/pexels-photo-433124.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/1008650/pexels-photo-1008650.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/2832271/pexels-photo-2832271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/2559312/pexels-photo-2559312.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/1078085/pexels-photo-1078085.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/236288/pexels-photo-236288.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/3551717/pexels-photo-3551717.png?auto=compress&cs=tinysrgb&h=750&w=1260',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 50,
        right: 16,
      ),
      child: GridView.builder(
        itemCount: menu.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 6 / 8.5,
        ),
        itemBuilder: (BuildContext context, int index) =>
            CoffeeCardGridItemWidget(
          productName: menu[index]["product_name"]!,
          price: menu[index]["price"]!,
          imageUrl: menu[index]["img_url"]!,
        ),
      ),
    );
  }
}
