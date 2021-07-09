import 'package:flutter/material.dart ';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF2d2e30),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.8),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music_outlined),
          label: "Library",
        ),
      ],
    );
  }
}
