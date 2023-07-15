import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  const GridItems({
    super.key,
    required this.imagePath,
    required this.imageInfo,
  });

  final String imagePath;
  final String imageInfo;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      children: [
        Image.asset(imagePath),
        Text(imageInfo),
      ],
    );
  }
}
