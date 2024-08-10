import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'main_pages/home_page.dart';
import 'main_pages/urubuga_page.dart';
import 'main_pages/hafi_page.dart';
import 'main_pages/vuga_page.dart';
import 'main_pages/ibindi_page.dart';

/// Flutter code sample for[NavigationBar].

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.transparent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Iconsax.home_15),
            icon: Icon(Iconsax.home),
            label: 'itunda',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.square5),
            icon: Icon(Iconsax.square),
            label: 'Urubuga',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.location5),
            icon: Icon(Iconsax.location),
            label: 'Hafi',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.messages_15),
            icon: Icon(Iconsax.messages),
            label: 'Vuga',
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.menu5),
            icon: Icon(Iconsax.menu),
            label: 'ibindi',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: const <Widget>[
          HomePage(),
          UrubugaPage(),
          HafiPage(),
          VugaPage(),
          IbindiPage(),
        ],
      ),
    );
  }
}
