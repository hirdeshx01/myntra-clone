import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  const DrawerOption({super.key, required this.option});

  final String option;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Text(
              option,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
