import 'package:flutter/material.dart';

import 'package:myntra_clone/drawer/main_drawer.dart';
import 'package:myntra_clone/home/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 5,
        title: Image.asset(
          'assets/icons/myntra.png',
          height: 28,
          width: 28,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Categories(
                  categoryImage: 'assets/images/categories.png',
                  categoryName: 'Categories',
                ),
                Categories(
                  categoryImage: 'assets/images/men.jpg',
                  categoryName: 'Men',
                ),
                Categories(
                  categoryImage: 'assets/images/women.jpg',
                  categoryName: 'Women',
                ),
                Categories(
                  categoryImage: 'assets/images/kids.jpg',
                  categoryName: 'Kids',
                ),
                Categories(
                  categoryImage: 'assets/images/footwear.jpg',
                  categoryName: 'Footwear',
                ),
                Categories(
                  categoryImage: 'assets/images/accessories.jpg',
                  categoryName: 'Accessories',
                ),
                Categories(
                  categoryImage: 'assets/images/beauty.jpg',
                  categoryName: 'Beauty',
                ),
                Categories(
                  categoryImage: 'assets/images/jewellery.jpg',
                  categoryName: 'Jewellery',
                ),
              ],
            ),
          ),
          Image.asset('assets/images/offer.webp'),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black87,
                ),
              ),
              onPressed: () {},
              child: const Text('Sign Up For Exciting Deals!'),
            ),
          ),
        ],
      ),
    );
  }
}
