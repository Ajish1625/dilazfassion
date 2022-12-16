
import 'package:demodezi/Home_page.dart';
import 'package:demodezi/Login_page/Form_page.dart';
import 'package:demodezi/offers_page.dart';
import 'package:demodezi/user_profile/profile_page.dart';
import 'package:flutter/material.dart';

import 'Categories.dart';
import 'my order/myorder.dart';



// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  PageController _pageController = PageController();
  List<Widget> _screens =[HomePage(),Categories(),myorder(),offers_page(),profile_page()];
  int _selectedIndex =0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
//        bottomNavigationBar: bottomNavigationBar,

      //
      // bottomNavigationBar: SizedBox(
      //   height: 39,
      //     child: bottomNavigationBar),

      body: Stack(
        children: [

          Align(
            child: PageView(
              controller: _pageController,
              children: _screens,
              onPageChanged: _onPageChanged,
            ),
          ),
          Align(
            alignment: Alignment(0.0,0.99),
            child: Container(
              height: 90,

              child: bottomNavigationBar,
            ),
          )
        ],
      ),

    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      child: BottomNavigationBar(

        onTap: _onItemTapped,
        showSelectedLabels: true,


        items: const [

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/myunde logo 1.png"),),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: 'Categories',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'MyOrder',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Offers',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        currentIndex: _selectedIndex,

        // showUnselectedLabels: true,
      ),
    );
  }
}











// bottomNavigationBar: BottomNavigationBar(
//   items: const <BottomNavigationBarItem>[
//
//     BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: 'Home',
//
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.widgets_outlined),
//       label: 'Categories',
//
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.work),
//       label: 'MyOrder',
//
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.explore),
//       label: 'Offers',
//     ),
//
//     BottomNavigationBarItem(
//       icon: Icon(Icons.person),
//       label: 'Profile',
//
//     ),
//
//   ],
//   currentIndex: _selectedIndex,
//   selectedItemColor: Colors.pinkAccent,
//   showUnselectedLabels: true,
//   unselectedItemColor: Colors.black,
//   onTap: _onItemTapped,
// ),

