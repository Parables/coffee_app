import 'package:coffee_app/models/app_state.dart';
import 'package:coffee_app/models/product.dart';
import 'package:coffee_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int choice = 0;
  @override
  Widget build(BuildContext context) {
    AppState appState = Provider.of<AppState>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.eerieBlackOne,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Image.network(
                          widget.product.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 15,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              IconlyLight.arrowLeft,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Cappuccino',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Centaur',
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: AppColors.peach,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      widget.product.name,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Centaur',
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 12,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "4.5",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Wrap(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('You are clicking on read more');
                      },
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text:
                                    "A single espresso shot poured into hot foamy milk,"
                                    " with the surface topped with mildly sweetened cocoa powder"
                                    " and drizzled with scrumptious caramel syrup...  ",
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                            TextSpan(
                                text: "Read more",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Choice of milk",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Centaur',
                  ),
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: ['Oat', 'Soy', 'Almond']
                      .asMap()
                      .entries
                      .map(
                        (entry) => GestureDetector(
                          onTap: () {
                            setState(() {
                              choice = entry.key;
                            });
                          },
                          child: Chip(
                            label: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "${entry.value} Milk",
                                style: TextStyle(
                                  color: choice == entry.key
                                      ? AppColors.eerieBlackOne
                                      : Colors.white,
                                ),
                              ),
                            ),
                            backgroundColor: choice == entry.key
                                ? AppColors.pearl
                                : AppColors.eerieBlackOne,
                            side: const BorderSide(color: AppColors.pearl),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: AppColors.eerieBlackOne,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(text: "Price\n"),
                      TextSpan(
                        text: "₹ ${widget.product.price}",
                        style: const TextStyle(
                          height: 1.5,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      appState.addToCart(widget.product);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'buy now'.toUpperCase(),
                        style: const TextStyle(
                          color: AppColors.eerieBlackOne,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.pearl,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
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
