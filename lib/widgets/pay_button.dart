import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PayButton extends StatelessWidget {
  const PayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Padding(
        padding: EdgeInsets.all(14.0),
        child: Text(
          "PAY NOW",
          style: TextStyle(
            color: AppColors.eerieBlackOne,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
          primary: AppColors.pearl,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
    );
  }
}
