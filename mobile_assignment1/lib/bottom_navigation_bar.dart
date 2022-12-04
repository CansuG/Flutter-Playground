import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromRGBO(113, 113, 113, 1),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30),
          label: 'Authors',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.my_library_books, size: 30),
          label: 'Papers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark, size: 30),
          label: 'Books',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 30),
          label: 'Search',
        ),
      ],
    );
  }
}