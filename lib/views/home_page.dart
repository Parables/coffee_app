import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/widgets/custom_app_bar.dart';
import 'package:coffee_app/widgets/main_body_widget.dart';
import 'package:coffee_app/widgets/my_bottom_nav_bar.dart';
import 'package:coffee_app/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.eerieBlackOne,
      // wrap the body of the Scaffold with SafeArea
      // to prevents our UI from entering
      // into the corners and notch area of the screen
      body: SafeArea(
        // the whole body is place in a Column
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            MyAppBarWidget(),
            SearchTextFieldWidget(),
            Expanded(
              child: MainBodyWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavBarWidget(activeMenu: 1),
    );
  }
}
