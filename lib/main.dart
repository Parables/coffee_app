import 'package:coffee_app/theme/app_theme.dart';
import 'package:coffee_app/views/home_page.dart';
import 'package:coffee_app/widgets/custom_app_bar.dart';
import 'package:coffee_app/widgets/main_body_widget.dart';
import 'package:coffee_app/widgets/my_bottom_nav_bar.dart';
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
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
