import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({
    Key? key,
    this.isFavorite = false,
  }) : super(key: key);

  final bool isFavorite;

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
            icon: Icon(
              Icons.favorite,
              color: isFavorite ? Colors.pink.shade300 : null,
            ),
          ),
        ),
      ],
    );
  }
}
