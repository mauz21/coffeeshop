import 'package:flutter/material.dart';

import '../Home View/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('images/8.png')),
          const Text(
            'Brew Day',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'How Do You Like Your Coffee?',
            style: TextStyle(fontSize: 20, color: Colors.brown),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ));
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.brown),
              child: const Center(
                  child: Text(
                'Enter Shop',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              )),
            ),
          )
        ],
      ),
    );
  }
}
