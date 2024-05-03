import 'package:flutter/material.dart';
import 'package:food_fete/components/custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Column(
          children: [
            //App Logo
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Icon(
                Icons.food_bank_rounded,
                size: 80,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //home
            CustomDrawerTile(
              text: 'H O M E',
              icon: Icons.home,
              onTap: () {},
            ),
            //setting
            CustomDrawerTile(
              text: 'S E T T I N G S',
              icon: Icons.settings,
              onTap: () {},
            ),
            const Spacer(),
            //logout
            CustomDrawerTile(
              text: 'L O G  O U T',
              icon: Icons.logout,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
