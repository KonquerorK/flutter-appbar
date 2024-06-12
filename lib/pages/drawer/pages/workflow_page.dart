
import 'package:appbar_model/pages/drawer/menu/drawer_menu.dart';
import 'package:flutter/material.dart';

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerMod(),
      appBar: AppBar(
        title: const Text('Workflow'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}