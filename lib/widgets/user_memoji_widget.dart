import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

// the User's memoji with double layer rings
class UserMemojiWidget extends StatelessWidget {
  const UserMemojiWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is the parent Container
    return Container(
      width: 60,
      height: 60,
      // the padding here gives the first outer cream colored ring
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppColors.peachOrange,
        borderRadius: BorderRadius.circular(60),
      ),

      // the inner container
      child: Container(
        // the padding here gives the second outer dark-purple colored ring
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColors.eerieBlackOne,
            width: 2,
          ),
        ),
        child: Image.asset(
          "assets/images/user.png",
        ),
      ),
    );
  }
}
