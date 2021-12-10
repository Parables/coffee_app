import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CoffeePriceButtonWidget extends StatelessWidget {
  const CoffeePriceButtonWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.purpleTaupe,
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Text(
            "₹ $price",
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
    );
  }
}
