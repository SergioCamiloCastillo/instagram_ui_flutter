import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/pages/account_page.dart';
import 'package:instagram_ui/screens/pages/home_page.dart';
import 'package:instagram_ui/screens/pages/reels_page.dart';
import 'package:instagram_ui/screens/pages/search_page.dart';
import 'package:instagram_ui/screens/pages/shop_page.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;
  final List<Widget> _childrenScreens = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    AccountPage()
  ];
  void _navigationBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childrenScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigationBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Tienda"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cuenta"),
        ],
      ),
    );
  }
}
