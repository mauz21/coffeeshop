import 'package:coffee_shop/Model/coffee_model.dart';
import 'package:coffee_shop/Model/coffee_shop_model.dart';
import 'package:coffee_shop/View/Components/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  get payNow => null;

  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Item Added Successfully to Cart'),
        actions: [],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return Scaffold(
          // bottomNavigationBar: BottomNavBar(),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const Text(
                  'How would you like your coffee?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      Coffee eachCoffee = value.coffeeShop[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        onPressed: () {
                          addToCart(eachCoffee);
                        },
                        icon: const Icon(Icons.add),
                      );
                    },
                  ),
                ),
                // GestureDetector(
                //   onTap: () => payNow,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: Colors.green,
                //     ),
                //     child: Text('Pay Now'),
                //   ),
                // )
              ],
            ),
          )),
        );
      },
    );
  }
}
