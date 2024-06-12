//sliver AppBar
import 'package:flutter/material.dart';

class SliverAppBarMod extends StatelessWidget {
  const SliverAppBarMod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.lightBlue,
              expandedHeight: 240, // Adjust height as needed
              floating: true, // Ensures app bar remains visible when scrolling
              pinned: true, // Keeps app bar fixed at the top
              snap: true,
              // centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'data:image/jpeg;base64,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',
                  fit: BoxFit.cover,
                ),
                title: const Text('Sliver AppBar',),
                // centerTitle: true,
              ),
            ),
          ];
        },
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemBuilder: (context, index) => ListTile(
            title: Text('Item $index'),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 12,
          ),
          itemCount: 31,
        ),
      ),
    );
  }
}
