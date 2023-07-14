import 'package:flutter/material.dart';

class Benefits extends StatelessWidget {
  const Benefits({
    super.key,
    required this.icon,
    required this.benefit,
  });

  final Icon icon;
  final String benefit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.amber,
            child: icon,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            benefit,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
