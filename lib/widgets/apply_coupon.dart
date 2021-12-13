import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ApplyCoupon extends StatelessWidget {
  const ApplyCoupon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          color: AppColors.temptress,
          child: Row(
            children: const [
              SizedBox(width: 20),
              Text(
                "Apply Coupon Code",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Centaur',
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
                size: 16,
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
        Positioned(
          top: 12.5,
          left: -5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.eerieBlackOne,
            ),
          ),
        ),
        Positioned(
          top: 12.5,
          right: -5,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.eerieBlackOne,
            ),
          ),
        )
      ],
    );
  }
}
