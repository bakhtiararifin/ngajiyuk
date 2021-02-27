import 'package:flutter/material.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ngajiyuk'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: <Widget>[
          _Lesson('Sholat'),
          _Lesson('Puasa'),
          _Lesson('Zakat'),
          _Lesson('Haji'),
        ],
      ),
    );
  }
}

class _Lesson extends StatelessWidget {
  final String title;
  const _Lesson(
    this.title, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => _gotoLessonPage(context),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }

  void _gotoLessonPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LessonPage(title),
      ),
    );
  }
}
