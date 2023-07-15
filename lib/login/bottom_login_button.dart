import 'package:flutter/material.dart';
import 'package:myntra_clone/home/home_screen.dart';

class BottomLoginButton extends StatelessWidget {
  const BottomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => const HomeScreen()),
                  ),
                );
              },
              child: const Text(
                'LOG IN',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'By enrolling you are agree to',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Insider Terms and Conditions',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.pink),
            ),
          )
        ],
      ),
    );
  }
}
