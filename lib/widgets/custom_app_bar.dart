import 'package:coffee_app/widgets/deja_brew_store_name_widget.dart';
import 'package:coffee_app/widgets/user_memoji_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // add some padding around the TextField for some spacing
    // default Material horizontal padding should be 16
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      // use a Row to lay out the Store name('deja Brew) and the user's memoji icon
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          DejaBrewStoreNameWidget(),
          UserMemojiWidget(),
        ],
      ),
    );
  }
}
