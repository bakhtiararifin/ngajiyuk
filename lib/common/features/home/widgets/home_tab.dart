import 'package:flutter/material.dart';
import 'package:ngajiyuk/common/features/home/widgets/video.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Video(isFavorite: true),
        Video(),
        Video(),
        Video(),
      ],
    );
  }
}
