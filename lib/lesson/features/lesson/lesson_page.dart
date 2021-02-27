import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  final String title;

  const LessonPage(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 13,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Belajar Sholat'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
