import 'package:appbar_model/pages/appbar/appbar.dart';
import 'package:appbar_model/pages/drawer/drawer_appbar_home.dart';
import 'package:appbar_model/pages/popup_menu_button/menu_button_appbar.dart';
import 'package:appbar_model/pages/search/search_appbar.dart';
import 'package:appbar_model/pages/sliver/sliver_appbar.dart';
import 'package:appbar_model/pages/tabBar/tabBar_appbar.dart';
import 'package:appbar_model/pages/transparent_appbar/transparent.dart';
import 'package:appbar_model/pages/will_pope_scope/page1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H O M E'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent[100],
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePageDrawer()));
                },
                child: const Text('Drawer AppBar')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PopupMenuButtonMod()));
                },
                child: const Text('Popup Menu Button AppBar')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SearchAppBar()));
                },
                child: const Text('Search AppBar')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SliverAppBarMod()));
                },
                child: const Text('Sliver AppBar')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TabBarAppBar()));
                },
                child: const Text('TabBar AppBar')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const PageOne()));
                },
                child: const Text('Will Pope Scope')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyAppBar()));
                },
                child: const Text('AppBar')),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TransparentAppBar()));
                },
                child: const Text('Transparent AppBar')),
          ],
        ),
      ),
    );
  }
}
