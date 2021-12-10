import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/widgets/custom_app_bar.dart';
import 'package:coffee_app/widgets/main_body_widget.dart';
import 'package:coffee_app/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

void main() {
  runApp(const MyCoffeeApp());
}

class MyCoffeeApp extends StatelessWidget {
  const MyCoffeeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.eerieBlackOne,
        // SafeArea prevents our UI from entering into the corners and notch area of the screen or front camera/speaker
        body: SafeArea(
          // the whole body is place in a Column
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CustomAppBar(),
              SearchTextField(),
              Expanded(
                child: MainBodyWidget(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: AppColors.eerieBlackTwo,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyBold.home,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyBold.buy,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyBold.heart,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyBold.notification,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
