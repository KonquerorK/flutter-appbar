import 'package:appbar_model/pages/search/search_appbar.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        //bottom permet d'etendre notre appbar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SearchAppBar()));
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add)),
        ],
        leading: const Icon(Icons.menu),
      ),
    );
  }
}
