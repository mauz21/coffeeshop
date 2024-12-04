import 'package:flutter/material.dart';

import '../../Model/coffee_model.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        leading: Image.asset(coffee.imagePath),
        subtitle: Text(coffee.price),
        title: Text(
          coffee.name,
        ),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
