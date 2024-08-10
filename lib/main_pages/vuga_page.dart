import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class VugaPage extends StatelessWidget {
  const VugaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vuga'),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.search_normal),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Iconsax.notification),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: 25,
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(color: Color.fromARGB(37, 158, 158, 158)),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('item $index'),
          );
        },
      ),
    );
  }
}
