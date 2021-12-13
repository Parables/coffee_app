import 'package:coffee_app/models/cart_item.dart';
import 'package:coffee_app/models/product.dart';
import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  final List<Product> allProducts = [
    Product(
      key: UniqueKey(),
      name: 'Cinnamon & Cocoa',
      price: 99,
      imgUrl:
          'https://cdn.pixabay.com/photo/2016/08/09/13/21/coffee-1580595_960_720.jpg',
    ),
    Product(
      key: UniqueKey(),
      name: 'Drizzled with Caramel',
      price: 199,
      imgUrl:
          'https://images.pexels.com/photos/312418/pexels-photo-312418.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ),
    Product(
      key: UniqueKey(),
      name: 'Bursting Blueberry',
      price: 249,
      imgUrl:
          'https://images.pexels.com/photos/1170659/pexels-photo-1170659.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
    Product(
      key: UniqueKey(),
      name: 'Dalgona Whipped Macha',
      price: 299,
      imgUrl:
          'https://images.pexels.com/photos/6341408/pexels-photo-6341408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    ),
  ];

  // List<Product> cart = [];
  Map<Key, CartItem> cart = {};

  addToCart(Product product) {
    CartItem? cartItem = cart[product.key];
    if (cart.containsKey(product.key)) {
      increaseQnty(cartItem!);
    } else {
      cart[product.key] = CartItem(key: product.key, product: product);
    }
    print("${product.name} has been added to  cart");
    notifyListeners();
  }

  increaseQnty(CartItem cartItem) {
    // its already there... increase the qnty
    int qnty = cartItem.qnty ?? 1;
    cartItem.qnty = qnty + 1;
    cart[cartItem.key] = cartItem;
    print(
        "${cartItem.product.name} has been increase to ${cartItem.qnty} in the cart");
    notifyListeners();
  }

  decreaseQnty(CartItem cartItem) {
    // its already there... increase the qnty
    int qnty = cartItem.qnty ?? 1;
    cartItem.qnty = qnty - 1;
    if (cartItem.qnty == 0) {
      removeFromCart(cartItem.product);
    } else {
      cart[cartItem.key] = cartItem;
      print(
          "${cartItem.product.name} has been decrease to ${cartItem.qnty} in the cart");
    }
    notifyListeners();
  }

  removeFromCart(Product product) {
    cart.remove(product.key);
    notifyListeners();
    print("${product.name} has been removed from  cart");
  }

  calcTotal() {
    double total = 0.0;
    for (var element in cart.values) {
      total = total + (element.qnty ?? 1) * element.product.price;
    }
    return total + 49 + 64.87;
  }
}
