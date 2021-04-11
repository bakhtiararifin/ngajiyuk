import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/account_tab.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_tab.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentNavBarIndex = 0;

  @override
  void initState() {
    getIt<FirebaseAnalytics>().logEvent(name: 'HomePage');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ngajikuy'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _currentNavBarIndex,
        onTap: _onNavBarTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white.withAlpha(160),
      ),
      body: _buildBody(),
    );
  }

  void _onNavBarTap(int index) {
    setState(() {
      _currentNavBarIndex = index;
    });
  }

  Widget _buildBody() {
    if (_currentNavBarIndex == 0) {
      return HomeTab();
    } else {
      return AccountTab();
    }
  }
}
