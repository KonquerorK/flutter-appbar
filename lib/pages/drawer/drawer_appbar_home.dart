//Drawer AppBar

import 'package:appbar_model/pages/drawer/menu/drawer_menu.dart';
import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H O M E'),
        centerTitle: true,
      ),
      drawer: const NavigationDrawerMod(),
    );
  }
}
