import 'package:coffee_shop/Model/coffee_shop_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'View/Splash View/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
