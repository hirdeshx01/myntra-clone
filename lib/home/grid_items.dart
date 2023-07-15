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
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            height: 100,
            width: double.maxFinite,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        Text(
          imageInfo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
