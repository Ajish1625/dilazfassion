// import 'package:demodezi/Categories.dart';
// import 'package:demodezi/myorder.dart';
// import 'package:demodezi/Profile.dart';
// import 'package:demodezi/offers.dart';
// import 'package:flutter/material.dart';
//
// // void main() => runApp(NavDrawer());
//
// class bottombar extends StatelessWidget {
//
//
//   int _selectedIndex = 0;
//
//   List<Widget> _screens =[Categories(),Explore(),Profile(),Studio()];
//
//   void _onItemTapped(int index) {
//
//       _selectedIndex = index;
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return BottomNavigationBar(
//     items: const <BottomNavigationBarItem>[
//
//     BottomNavigationBarItem(
//     icon: Icon(Icons.home),
//     label: 'Home',
//
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.widgets_outlined),
//     label: 'Categories',
//
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.work),
//     label: 'Studio',
//
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.explore),
//     label: 'Explore',
//        ),
//
//     BottomNavigationBarItem(
//     icon: Icon(Icons.person),
//     label: 'Profile',
//
//     ),
//
//     ],
//      currentIndex: _selectedIndex,
//     selectedItemColor: Colors.pinkAccent,
//      showUnselectedLabels: true,
//      unselectedItemColor: Colors.black,
//      onTap: _onItemTapped,
//     );
//   }
//
//
// }