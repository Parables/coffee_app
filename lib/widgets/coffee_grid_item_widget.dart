import 'package:coffee_app/models/product.dart';
import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/views/details_page.dart';
import 'package:coffee_app/widgets/coffee_price_button_widget.dart';
import 'package:coffee_app/widgets/coffee_rating_widget.dart';
import 'package:flutter/material.dart';

class CoffeeCardGridItemWidget extends StatelessWidget {
  const CoffeeCardGridItemWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

// these variables are passed into the widget's constructor
  final Product product;

  @override
  Widget build(BuildContext context) {
    // the whole widget is in a Material widget
    // remember, Material is very similar to a Container
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsPage(product: product),
          ),
        );
      },
      child: Material(
        color: AppColors.darkCharcoal,
        borderRadius: BorderRadius.circular(15),
        // some Padding around the content
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          // the Column allows us to put things in vertical order
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // the Stack is used to stack the rating on top of the image
              Stack(
                children: [
                  // the image is placed in a SizedBox to constrain the image's size
                  SizedBox(
                    height: 100,
                    // width should grow until it reaches the end of the parent widget
                    width: double.infinity,
                    // ClipRRect allows you to clip any widget with a Rectangle and apply borderRadius to that widget
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        // the image is loaded from the image address url
                        product.imgUrl,
                        //makes the image cover its parent widget, in this case the SizedBox
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // the Rating Widget is placed on top of the image because its the last thing in the Stack
                  // by default, top is 0, left:0 so it is pinned to the topLeft corner.
                  CoffeeRatingWidget(rating: product.rating)
                ],
              ),

              // the name of the coffee
              Text(
                product.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Centaur',
                  fontSize: 18,
                ),
              ),

              // the price of the coffee with the plus icon
              CoffeePriceButtonWidget(product: product)
            ],
          ),
        ),
      ),
    );
  }
}
