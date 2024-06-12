// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //back button pressed
        // return false; //stay on page
        // return true; //pop page
        final shouldPop = await showDialog(
          builder: (context) => AlertDialog(
            title: const Text('Do you wnat to go back ?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('CANCEL')),
              TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('YES')),
            ],
          ), context: context,
        );
        return shouldPop ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Page 2 ',
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// Future<bool?> showMyDialog() => showDialog<bool>(
//   builder: (context) => AlertDialog(
//     title: const Text('Do you wnat to go back ?'),
//     actions: [
//       TextButton(onPressed: ()=> Navigator.pop(context,false), child: const Text('CANCEL')),
//       TextButton(onPressed: ()=> Navigator.pop(context,true), child: const Text('YES')),
//     ],
//   ), context: context,
// );

