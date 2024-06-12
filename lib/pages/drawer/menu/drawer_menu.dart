import 'package:appbar_model/pages/drawer/drawer_appbar_home.dart';
import 'package:appbar_model/pages/drawer/pages/favourites_page.dart';
import 'package:appbar_model/pages/drawer/pages/notifications_page.dart';
import 'package:appbar_model/pages/drawer/pages/plugins_page.dart';
import 'package:appbar_model/pages/drawer/pages/settings_page.dart';
import 'package:appbar_model/pages/drawer/pages/updates_page.dart';
import 'package:appbar_model/pages/drawer/pages/user_page.dart';
import 'package:appbar_model/pages/drawer/pages/workflow_page.dart';
import 'package:flutter/material.dart';

class NavigationDrawerMod extends StatelessWidget {
  const NavigationDrawerMod({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const UserPage();
          }));
        },
        child: Container(
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
          // color: Colors.deepPurple,
          child: const Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAAYFBMVEX///8AAADPz8/8/PwVFRV2dnb4+Pjv7+/r6+vb29uYmJheXl7KysqMjIwRERHi4uJNTU0qKipra2u2trYJCQlVVVU7OzsdHR2lpaUxMTFHR0fBwcGurq5kZGSAgIAkJCShhL2gAAAFJUlEQVR4nO2dCZbiIBCGG6NZNLb70q73v+XoZBxNAqGAgir68Z2g/ofUTvz6SiQSiUQikUgkoqUoqC3AI7tcMmob0Kj2+4raBizyqRDTnNoKJCrx4JccTb5+iln/jqOpxV9qajswyLeNmO1vOJqp+MeU2hJ3CvGf+CPn5C1mQm2LK/X2LWYbuQ/IZ+KDWdw+4Dj+FDM+UtvjwmInWuwW1BY5MBcd5tQW2VPvu2L20fqA/NbVIsQtVh+wGffFjDfUVtlRrvtaHtlzSW2XDdlFpkWIKCvosnf7//mACI8mm8q1PLLn+I6mUmmJsYJeqsUsqW0zpVZria+CHtIiBLV1Zihvf0NUFfTiMCzmEFP2PBnWElUFfV7pxKzO1DZCKaRJWZt1LK2aoyRb7hJLBb2Y6bUIMYvDBxwhWoSI4mhq7e1v+BlRW6on7zUxVMz5V9CDSVkb9ilacYWLuXJ3zxu4FiGYNzeKHxMxP7yPBnz7G1g3OBdmWoTg3NwYqJXlMK6gz6ZahGCbPWfA2P/JimvfafptLuabaQW9OJlrEeLEMnvOJAMMCDeOP7SzoresY8/QBxTaJoaKCb88QDZZgsFv/gSrleWwq6AVkyUYzI6m0rQwh7mzGnLAa2U5rCrokZsWVvOnbKc3d5gdn8hpVCvLYeMDcusQ8+bA5dY43v4GJhW0brIEg8n8yaBTNsSVWseTDcrBPCInAx+QO7vlFzN69zzd6s2EQV9BV2gH84icxHlAhuKWX8xpf2j9LUwX9qTzp8KyiaHiRllBn9FufwPlgn2JePsbdnSddIRsuQtZ5Cz0tplDdWuQb3/DjUaL8WQJBk32bDxZgkEyf/Jw+xsIfIDZXNmEfXgfgJqUtQleQVeoSVmb4E/UvbjlF4Hd88ZiFgtnFdQHQLYwXQi6wQlc9rMn4JogZq0sJ1wFrX4ag0ewRzYjb/HyTagNTtmLRXwCvYE02MJ0IUgFnVttlZhzCnFrnObKJlwCiAmlJcT7J+utEnO8P7IZeLGIj+/I6T32f7Lzq8V+3ccGvytCpacmhoqlzwanzRamCz7nT6NA8fLNyVuKhjtZguFt/nS+hxdz97TBWQaMl28mfnyAtxbmMF7cc/frPqHw8RWhzHsTQ8UR3we4bWG6cMBP0UhufwN69uy8hekCduT02o7VscLVEqxWloNaQWdBM/8+Y0yHRnj7GxB9wIj0xjxZofmADGkL04Ur1g/N72QJBtb8qXR4GoPHFSd7PgauleV8o8yfqsBNDBVLhBQtDzBZgoHwmXTSpKyNs3u2f7GIj/MbSIuH5P5wbG6UwTtlQ5zc3DNZrSzHyT17Wvazx6W54XmrxJy1vRZGbvmFvXtmEvs/sd7gZHb7Gyx9QMHKLb842UVORrH/E6s1wZHHLUwXbB7ZZEwP5pGimVfQHGplOeYVtPwD5Tww/Uy66gPlLNgafia9YumWX5yMKmg+tbIcowo66LqPDQbZc8749jcY/NFYoC1MF8CRMydYXjDlDj0altlyF2D2XFLbCQMWOdkmZW1A86eaeOQHZQzY4uYwWYIBmD9BPlDOg4PWB/CYLMGY6XwAwbKfPZo3kDXrbLnL8Aan60fXQjP4kTeKLUwXhjY4OdfKctQVdEa0henCRhVsCqadsiFUT9RDvFjER/EGMpJsuYv81hCt+royk2mJoFaWI4ucZKu+roz7WqKoleX0sueSbZ9cz6rrA4K8V/ZFZ/50jvbGPDm0U7TFKGp4fFA0kUgkEolEIvHBH25oW6lzeXaKAAAAAElFTkSuQmCC'),
              ),
              // SizedBox(height: 12,),
              Text(
                'The Konqueror',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'Thekonqueror@protonmail.com',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16, //ajouter un espace de 16px entre les listtile
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home_outlined),
              onTap: () {
                Navigator.pop(
                    context); //permet de revenir a HomePage et non sur le drawer menu
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePageDrawer()));
                //permet de revenir sur le drawer menu
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const SecondPage()));
              },
              // onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const SecondPage())),
            ),
            ListTile(
              title: const Text('Favourites'),
              leading: const Icon(Icons.favorite_border),
              // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const FavouritesPage())),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FavouritesPage())),
            ),
            ListTile(
              title: const Text('Workflow'),
              leading: const Icon(Icons.workspaces_outline),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WorkflowPage())),
            ),
            const Divider(
              color: Colors.black45,
            ),
            ListTile(
              title: const Text('Updates'),
              leading: const Icon(Icons.update_outlined),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const UpdatesPage())),
            ),
            ListTile(
              title: const Text('Plugins'),
              leading: const Icon(Icons.account_tree_outlined),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PluginsPage())),
            ),
            const Divider(
              color: Colors.black45,
            ),
            ListTile(
              title: const Text('Notifications'),
              leading: const Icon(Icons.notifications_outlined),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationsPage())),
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings_outlined),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage())),
            ),
          ],
        ),
      );
}
