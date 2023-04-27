import 'package:flutter/material.dart';
import 'package:nft_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    // const Text("Popular"),
    const Text("Favourites"),
    const Text("Saved"),
    const Text("Profile"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFFABABAB),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.house_outlined),
              label: "Home",
              activeIcon: Icon(Icons.house)),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              label: "Cards",
              activeIcon: Icon(Icons.grid_view_sharp)),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: "Bookmark",
              activeIcon: Icon(Icons.bookmark)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Person",
              activeIcon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
