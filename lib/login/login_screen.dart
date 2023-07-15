import 'package:flutter/material.dart';
import 'package:myntra_clone/login/benefits.dart';
import 'package:myntra_clone/login/bottom_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      bottomSheet: const BottomLoginButton(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/login/login.webp'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'Become An INSIDER!',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                'Join the Insider programme and earn Supercoins with every purchase and much more. Log in now!',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Text(
                'Benefits of Joining The Programme',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Benefits(
              icon: Icon(
                Icons.timer_sharp,
                size: 35,
                color: Colors.black54,
              ),
              benefit: 'Early Access to The Sales',
            ),
            const Divider(),
            const Benefits(
              icon: Icon(
                Icons.window,
                size: 35,
                color: Colors.black54,
              ),
              benefit: 'Insider Exclusive Rewards and Benfits',
            ),
            const Divider(),
            const Benefits(
              icon: Icon(
                Icons.ring_volume_outlined,
                size: 35,
                color: Colors.black54,
              ),
              benefit: 'Priority Customer Support',
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Text(
                'How does it work',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Text(
                'Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every ₹100 spent',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset('assets/images/login/login2.png'),
            ),
            const SizedBox(height: 130)
          ],
        ),
      ),
    );
  }
}
