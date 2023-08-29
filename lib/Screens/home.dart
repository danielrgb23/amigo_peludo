import 'package:amigo_peludo/Screens/HomeScreen.dart';
import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        elevation: 3,
        iconSize: 24,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromRGBO(168, 183, 200, 1),
        unselectedIconTheme:
            const IconThemeData(color: Color.fromRGBO(168, 183, 200, 1)),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Meu Pet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Notícias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_bar),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_bar),
            label: 'Veterínario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_bar),
            label: 'Adote',
          ),
        ],
        selectedItemColor: ThemeColors.thertiary,
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
      body: pages.elementAt(_currentPage),
    );
  }
}
