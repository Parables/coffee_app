import 'package:flutter/material.dart';

class DejaBrewStoreNameWidget extends StatelessWidget {
  const DejaBrewStoreNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // use a Stack to position the Brew on top of the deja
    return Stack(
      children: const [
        Text(
          "déjà",
          style: TextStyle(
            fontFamily: 'Centaur',
            fontSize: 45,
            fontWeight: FontWeight.w500,
            color: Colors.grey, // fontStyle: FontStyle.italic,
          ),
        ),
        // controll the postion with padding instead of the Positioned widget
        Padding(
          // these padding values *may not be suitable for every device...
          // adjust accordingly if neccessary
          padding: EdgeInsets.only(top: 28.0, left: 3),
          child: Text(
            "Brew",
            style: TextStyle(
              fontFamily: 'Centaur',
              fontSize: 60,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
