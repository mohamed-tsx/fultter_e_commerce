import 'package:flutter/material.dart';
import 'package:fultter_e_commerce/components/my_listile.dart';
import 'package:fultter_e_commerce/pages/intro_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              // Shop tile
              MyListile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              // Cart tile
              MyListile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),
            ],
          ),

          // Exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListile(
              text: "Exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const IntroPage(),
                ),
                (route) => false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
