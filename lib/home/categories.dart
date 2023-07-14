import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.categoryImage,
    required this.categoryName,
  });

  final String categoryImage;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(categoryImage),
          ),
          Text(categoryName),
        ],
      ),
    );
  }
}
