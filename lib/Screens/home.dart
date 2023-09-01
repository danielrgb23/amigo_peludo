import 'package:amigo_peludo/Screens/HomeScreen.dart';
import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 2;
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
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Meu Pet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/newspaper.svg',
                width: 24,
                height: 24,
                color: _currentPage == 1
                    ? ThemeColors.thertiary
                    : const Color.fromRGBO(168, 183, 200, 1)),
            label: 'Notícias',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg',
                width: 24,
                height: 24,
                color: _currentPage == 2
                    ? ThemeColors.thertiary
                    : const Color.fromRGBO(168, 183, 200, 1)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/vet.svg',
                width: 24,
                height: 24,
                color: _currentPage == 3
                    ? ThemeColors.thertiary
                    : const Color.fromRGBO(168, 183, 200, 1)),
            label: 'Veterínario',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/dog.svg',
                width: 24,
                height: 24,
                color: _currentPage == 4
                    ? ThemeColors.thertiary
                    : const Color.fromRGBO(168, 183, 200, 1)),
            label: 'Adote',
          ),
        ],
        selectedItemColor: ThemeColors.thertiary,
        showUnselectedLabels: true,
        elevation: 3,
        iconSize: 24,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromRGBO(168, 183, 200, 1),
        unselectedIconTheme:
            const IconThemeData(color: Color.fromRGBO(168, 183, 200, 1)),
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
