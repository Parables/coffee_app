import 'package:flutter/material.dart';

// the User's memoji with double layer rings
class UserMemojiWidget extends StatelessWidget {
  const UserMemojiWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is the outter ring
    return Material(
      color: const Color(0xFFf4cc96),
      borderRadius: BorderRadius.circular(60),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        // this is the inner ring
        child: Material(
          shape: const CircleBorder(
            side: BorderSide(
              color: Color(0xFF201520),
              width: 2,
            ),
          ),
          // this is the CircleAvatar that containes the image
          child: CircleAvatar(
            minRadius: 25,
            backgroundColor: const Color(0xFFf4cc96),
            // make sure to add a .png image to your `assets/images` folder
            // and add an entry of it in the `pubspec.yaml` file
            child: Image.asset(
              "assets/images/user.png",
              width: 28,
            ),
          ),
        ),
      ),
    );
  }
}
