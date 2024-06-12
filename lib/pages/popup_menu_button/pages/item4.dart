import 'package:flutter/material.dart';

class MenuItemConfig extends StatelessWidget {
  const MenuItemConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Item Configuration'),
        centerTitle: true,
      ),
    );
  }
}