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
        backgroundColor: const Color(0xFF201520),
        // SafeArea prevents our UI from entering into the corners and notch area of the screen or front camera/speaker
        body: SafeArea(
          // the whole body is place in a Column
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Row(
                  children: [
                    Stack(
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
                        Padding(
                          padding: EdgeInsets.only(top: 28.0, left: 3),
                          child: Text(
                            "Brew",
                            style: TextStyle(
                                fontFamily: 'Centaur',
                                fontSize: 60,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color(0xFFf4ce9a),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: const Color(0xFF201520), width: 2)),
                        child: Image.asset(
                          "assets/images/user.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Browse your favourite coffee",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Color(0xFF171017),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Expanded(child: MainBody()),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFF22151f),
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

class MainBody extends StatelessWidget {
  MainBody({
    Key? key,
  }) : super(key: key);

  final menu = [
    {
      'product_name': 'Cinnamon & Cocoa',
      'price': '99',
      'img_url':
          'https://cdn.pixabay.com/photo/2016/08/09/13/21/coffee-1580595_960_720.jpg',
    },
    {
      'product_name': 'Drizzled with Caramel',
      'price': '199',
      'img_url':
          'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Bursting Blueberry',
      'price': '249',
      'img_url':
          'https://images.pexels.com/photos/1170659/pexels-photo-1170659.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/6341408/pexels-photo-6341408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/302904/pexels-photo-302904.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/433124/pexels-photo-433124.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/1008650/pexels-photo-1008650.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/2832271/pexels-photo-2832271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/2559312/pexels-photo-2559312.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/1078085/pexels-photo-1078085.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/236288/pexels-photo-236288.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
    },
    {
      'product_name': 'Dalgona Whipped Macha',
      'price': '299',
      'img_url':
          'https://images.pexels.com/photos/3551717/pexels-photo-3551717.png?auto=compress&cs=tinysrgb&h=750&w=1260',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 50,
            right: 16,
          ),
          child: GridView.builder(
            itemCount: menu.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 6 / 8.5,
            ),
            itemBuilder: (BuildContext context, int index) => Material(
              color: const Color(0xFF362c36),
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              menu[index]["img_url"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Material(
                          color: const Color(0xFF463d46).withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  IconlyBold.star,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      menu[index]["product_name"]!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Centaur',
                        fontSize: 16,
                      ),
                    ),
                    Material(
                      color: const Color(0xFF463d46),
                      borderRadius: BorderRadius.circular(10),
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          Text(
                            "₹ ${menu[index]['price']!}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFefe3c8),
                            ),
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const Positioned(top: 0, left: 0, bottom: 0, child: SideMenu()),
      ],
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      decoration: const BoxDecoration(
          color: Color(0XFF38232a),
          borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        children: [
          'Cappuccino',
          'Latte',
          'Americano',
          'Esperesso',
          'Flat White',
        ]
            .map((category) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Centaur',
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
