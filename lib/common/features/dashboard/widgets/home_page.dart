import 'package:flutter/material.dart';

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
          _Lesson('Sholat'),
          _Lesson('Sholat'),
          _Lesson('Sholat'),
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
        onTap: () {},
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
