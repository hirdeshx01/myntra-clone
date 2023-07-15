import 'package:flutter/material.dart';

import 'package:myntra_clone/drawer/drawer_option.dart';
import 'package:myntra_clone/drawer/more_drawer_option.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/images/drawer/drawer-header.webp',
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 25,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SIGN UP. LOGIN',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const DrawerOption(option: 'Men'),
            const DrawerOption(option: 'Women'),
            const DrawerOption(option: 'Kids'),
            const DrawerOption(option: 'Home & Living'),
            const DrawerOption(option: 'Beauty'),
            const Divider(),
            const MoreDrawerOption(option: 'Myntra Studio'),
            const MoreDrawerOption(option: 'Myntra Mall'),
            const MoreDrawerOption(option: 'Myntra Insider'),
            const MoreDrawerOption(option: 'Gift Cards'),
            const MoreDrawerOption(option: 'Contact Us'),
            const MoreDrawerOption(option: 'FAQs'),
            const MoreDrawerOption(option: 'Legal'),
            Image.asset(
              'assets/images/drawer/drawer-footer.webp',
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink),
                ),
                onPressed: () {},
                child: const Text(
                  'Get Myntra App',
                  style: TextStyle(),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
