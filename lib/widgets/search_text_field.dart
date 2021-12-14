import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // add some padding around the TextField for some spacing
    // default Material horizontal padding should be 16
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 10),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          // hintText is the text shown before user inputs into the TextField
          hintText: "Browse your favourite coffee",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          // set filled to true to allow the fillColor to be applied
          filled: true,
          // set the fillColor to be used
          fillColor: AppColors.chineseBlack,
          // set the border of the input to an OutlineInputBorder
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            // BorderSide.none removes the border around the OutlineInputBorder
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
