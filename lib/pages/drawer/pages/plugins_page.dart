
import 'package:appbar_model/pages/drawer/menu/drawer_menu.dart';
import 'package:flutter/material.dart';

class PluginsPage extends StatelessWidget {
  const PluginsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerMod(),
      appBar: AppBar(
        title: const Text('Plugins'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}