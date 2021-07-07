import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              'https://awsimages.detik.net.id/community/media/visual/2020/08/31/alquran_43.jpeg?w=700&q=90',
              fit: BoxFit.cover,
            ),
          ),
          const ListTile(
            title: Text('Belajar Baca Al Quran'),
            subtitle: Text('12 juni 2021'),
          ),
          Container(
            color: Theme.of(context).backgroundColor.withAlpha(50),
            child: const ListTile(
              title: Text('Video Lainnya'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (_, __) => ListTile(
                leading: Image.network(
                  'https://awsimages.detik.net.id/community/media/visual/2020/08/31/alquran_43.jpeg?w=700&q=90',
                  fit: BoxFit.cover,
                ),
                title: const Text('Belajar Baca Al Quran'),
                subtitle: const Text('12 juni 2021'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
