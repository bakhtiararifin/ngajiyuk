import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Pencarian...',
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children: [
          ListTile(title: const Text('Iman'), onTap: () {}),
          ListTile(title: const Text('Islam'), onTap: () {}),
          ListTile(title: const Text('Sholat lima waktu'), onTap: () {}),
          ListTile(title: const Text('puasa'), onTap: () {}),
          ListTile(title: const Text('zakat'), onTap: () {}),
        ],
      ),
    );
  }
}
