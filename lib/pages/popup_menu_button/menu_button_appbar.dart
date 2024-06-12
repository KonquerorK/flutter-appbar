// ignore_for_file: constant_identifier_names

import 'package:appbar_model/pages/popup_menu_button/pages/item1.dart';
import 'package:appbar_model/pages/popup_menu_button/pages/item2.dart';
import 'package:appbar_model/pages/popup_menu_button/pages/item3.dart';
import 'package:appbar_model/pages/popup_menu_button/pages/item4.dart';
import 'package:flutter/material.dart';

enum MenuItem { Add, Settings, Share, ManageSettings }

class PopupMenuButtonMod extends StatefulWidget {
  const PopupMenuButtonMod({super.key});

  @override
  State<PopupMenuButtonMod> createState() => _PopupMenuButtonModState();
}

class _PopupMenuButtonModState extends State<PopupMenuButtonMod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton'),
        actions: [
          PopupMenuButton<MenuItem>(
            onSelected: (value) {
              if (value == MenuItem.Add) {
                //Clicked "Add"
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MenuItemAdd()));
              } else if (value == MenuItem.Settings) {
                //Clicked "Settings"
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MenuItemSettings()));
              } else if (value == MenuItem.Share) {
                // return "Share";
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MenuItemShare()));
              } else {
                //Clicked "Manage Settings"
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MenuItemConfig()));
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('Add'),
              ),
              const PopupMenuItem(
                child: Text('Settings'),
              ),
              const PopupMenuItem(
                child: Text('Share'),
              ),
              const PopupMenuItem(
                child: Text('Config'),
              ),
            ],
          )
        ],
      ),
    );
  }
}



      //   actions: [
      //     PopupMenuButton<MenuItem>(
      //   onSelected: (value) {
      //     if (value == MenuItem.Add) {
      //       //Clicked "Add"
      //     } else if (value == MenuItem.Settings) {
      //       //Clicked "Settings"
      //     } else if (value == MenuItem.Share) {
      //       // return "Share";
      //     } else {
      //       //Clicked "Manage Settings"
      //     }
          
      //     PopupMenuButton(
      //       itemBuilder: (context) => [
      //         const PopupMenuItem(
      //           child: Text('Add'),
      //           value: MenuItem.Add,
      //         ),
      //         const PopupMenuItem(
      //           child: Text('Settings'),
      //           value: MenuItem.Settings,
      //         ),
      //         const PopupMenuItem(
      //           child: Text('Share'),
      //           value: MenuItem.Share,
      //         ),
      //         const PopupMenuItem(
      //           child: Text('Manage Settings'),
      //           value: MenuItem.ManageSettings,
      //         ),
      //       ],
      //     );
      //   }, itemBuilder: (BuildContext context) {  },
      // ),
      //   ], VJh4pPv9