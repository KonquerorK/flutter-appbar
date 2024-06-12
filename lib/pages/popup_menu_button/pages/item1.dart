import 'package:flutter/material.dart';

class MenuItemAdd extends StatelessWidget {
  const MenuItemAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Item Add'),
        centerTitle: true,
      ),
    );
  }
}