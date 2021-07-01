import 'package:flutter/material.dart';
import 'package:ngajiyuk/common/features/home/widgets/video.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Video(isFavorite: true),
      ],
    );
  }
}
