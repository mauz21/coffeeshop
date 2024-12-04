import 'package:coffee_shop/Model/coffee_model.dart';
import 'package:coffee_shop/Model/coffee_shop_model.dart';
import 'package:coffee_shop/View/Components/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text(
                    'Your Cart',
                    style: TextStyle(fontSize: 20),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.userCart[index];

                        return CoffeeTile(
                          coffee: eachCoffee,
                          onPressed: () => removeFromCart(eachCoffee),
                          icon: const Icon(Icons.delete),
                        );
                      },
                    ),
                  ),
                  Card(
                    elevation: 3,
                    child: Container(
                      width: 500,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Offers'),
                            Text('Add Code'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Card(
                    elevation: 3,
                    child: Container(
                      width: 500,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Order summary',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                height: 20,
                                color: Colors.black45,
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Order',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    '\$5.40',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Delivery',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    '\$6.20',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    '\$6.20',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 500,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            '\$6.20',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        splashRadius: Checkbox.width,
                        activeColor: Colors.black45,
                        fillColor: const WidgetStatePropertyAll(Colors.white),
                        value: true,
                        onChanged: (value) => null,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text('Add order contains a gift')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 500,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown.shade400),
                    child: Center(
                        child: const Text(
                      'Pay Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
                  )
                ],
              ),
            )));
  }
}
