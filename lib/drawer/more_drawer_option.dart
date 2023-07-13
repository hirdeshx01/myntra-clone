import 'package:flutter/material.dart';

class MoreDrawerOption extends StatelessWidget {
  const MoreDrawerOption({super.key, required this.option});

  final String option;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        alignment: Alignment.topLeft,
        child: Text(option),
      ),
    );
  }
}
