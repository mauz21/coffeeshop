import 'package:coffee_shop/Model/coffee_model.dart';
import 'package:flutter/cupertino.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(name: 'Long Black', price: '4.10', imagePath: "images/1.png"),
    Coffee(name: 'Latte', price: '5.40', imagePath: "images/2.png"),
    Coffee(name: 'Espresso', price: '3.20', imagePath: "images/3.png"),
    Coffee(name: 'Iced Coffee', price: '6.50', imagePath: "images/4.png"),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;
  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
