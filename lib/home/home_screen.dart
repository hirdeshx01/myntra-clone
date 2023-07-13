import 'package:flutter/material.dart';

import 'package:myntra_clone/drawer/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 4,
        title: Image.asset(
          'assets/icons/myntra.png',
          height: 28,
          width: 28,
        ),
        actions: const [
          Icon(
            Icons.add_box_outlined,
          ),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.favorite_outline_outlined),
          SizedBox(
            width: 12,
          ),
          Icon(Icons.shopping_bag_outlined),
          SizedBox(
            width: 12,
          ),
        ],
      ),
      drawer: const MainDrawer(),
    );
  }
}
