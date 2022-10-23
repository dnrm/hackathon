import 'package:flutter/material.dart';

// * PAGES
import './pages/homepage.dart';
import './pages/search.dart';
import './pages/shop.dart';
import './pages/profile.dart';
import './pages/create_session.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _pages = [
    const HomePage(),
    Shop(),
    const Profile(),
    const CreateSession(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage("images/avatar.jpg"),
            ),
          )
        ],
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xFF78ACC9), width: 2),
          ),
        ),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.house,
                ),
                label: 'Home',
                backgroundColor: Color(0xFF181818),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.money,
                ),
                label: 'Shop',
                backgroundColor: Color(0xFF181818),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Profile',
                backgroundColor: Color(0xFF181818),
              )
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xFF78ACC9),
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
            backgroundColor: const Color(0xFF181818)),
      ),
    );
  }
}
