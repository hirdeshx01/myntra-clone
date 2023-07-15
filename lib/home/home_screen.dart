import 'package:flutter/material.dart';
import 'package:myntra_clone/data/all_time_favourite_list.dart';

import 'package:myntra_clone/drawer/main_drawer.dart';
import 'package:myntra_clone/home/categories.dart';
import 'package:myntra_clone/home/grid_items.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Icon(
                          Icons.window,
                          size: 50,
                        ),
                      ),
                      Text('Categories'),
                    ],
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/men.jpg',
                    categoryName: 'Men',
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/women.jpg',
                    categoryName: 'Women',
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/kids.jpg',
                    categoryName: 'Kids',
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/footwear.jpg',
                    categoryName: 'Footwear',
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/accessories.jpg',
                    categoryName: 'Accessories',
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/beauty.jpg',
                    categoryName: 'Beauty',
                  ),
                  Categories(
                    categoryImage: 'assets/images/home/jewellery.jpg',
                    categoryName: 'Jewellery',
                  ),
                ],
              ),
            ),
            Image.asset('assets/images/home/offer.webp'),
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
            const SizedBox(
              height: 12,
            ),
            const Text('ALL TIME FAVOURITES'),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              children: [
                for (final item in allTimeFavourites)
                  GridItems(
                    imageInfo: item.imageInfo,
                    imagePath: item.imagePath,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
