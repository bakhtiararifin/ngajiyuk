import 'package:flutter/material.dart';
import 'package:ngajiyuk/common/features/home/widgets/favorite_tab.dart';
import 'package:ngajiyuk/common/features/home/widgets/home_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTabIndex = 0;
  final List<Widget> _tabs = [
    const HomeTab(),
    const FavoriteTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ngajiyuk'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
        ],
        currentIndex: _currentTabIndex,
        onTap: (index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
      ),
      body: _tabs[_currentTabIndex],
    );
  }
}
