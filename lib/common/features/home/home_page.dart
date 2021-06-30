import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ngajiyuk'),
      ),
      body: ListView(
        children: const [
          _Lesson(),
          _Lesson(),
          _Lesson(),
          _Lesson(),
        ],
      ),
    );
  }
}

class _Lesson extends StatelessWidget {
  const _Lesson({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            'https://awsimages.detik.net.id/community/media/visual/2020/08/31/alquran_43.jpeg?w=700&q=90',
            fit: BoxFit.cover,
          ),
        ),
        ListTile(
          title: const Text('Belajar Baca Al Quran'),
          subtitle: const Text('12 juni 2021'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ),
      ],
    );
  }
}
