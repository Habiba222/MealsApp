import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category_screen.dart';
import 'package:flutter_application_1/screens/favourites_screen.dart';
import 'package:flutter_application_1/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>> get _pages => [
        {
          'page': CategoryScreen(),
          'title': 'Categories',
        },
        {'page': Favourites(), 'title': 'Favourites'}
      ];

  int _SelectedPageIndex = 0;
  void _selectPage(int value) {
    setState(() {
      _SelectedPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_SelectedPageIndex]['title']),
      ),
      body: _pages[_SelectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: _SelectedPageIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), title: Text('Categories')),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favourites')),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
