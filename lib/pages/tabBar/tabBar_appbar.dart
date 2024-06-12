// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TabBarAppBar extends StatefulWidget {
  const TabBarAppBar({super.key});

  @override
  State<TabBarAppBar> createState() => _TabBarAppBarState();
}

class _TabBarAppBarState extends State<TabBarAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar'),
          backgroundColor: Colors.lightBlue,
          bottom: const TabBar(tabs: [
            Tab(text: 'Home',icon: Icon(Icons.home),),
            Tab(text: 'Favorites',icon: Icon(Icons.favorite),),
            Tab(text: 'Settings',icon: Icon(Icons.settings),),
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Page 1', style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
            Center(child: Text('Page 2', style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
            Center(child: Text('Page 3', style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),)),
          ]
        ),
      ),
    );
  }
}