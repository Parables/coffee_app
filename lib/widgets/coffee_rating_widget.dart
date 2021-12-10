import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CoffeeRatingWidget extends StatelessWidget {
  const CoffeeRatingWidget({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final String? rating;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.purpleTaupe.withOpacity(0.5),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              IconlyBold.star,
              color: Colors.amber,
              size: 16,
            ),
            const SizedBox(width: 5),
            Text(
              rating ?? '4.5',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
