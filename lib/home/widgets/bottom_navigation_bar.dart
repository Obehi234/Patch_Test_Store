import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {

  final int currentPage;
  final Function(int) onTap;

  const CustomBottomNavBar({
    required this.currentPage,
    required this.onTap,
    super.key,
});


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
        onTap: onTap,
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_sharp), label: "Sell"),
          BottomNavigationBarItem(icon: Icon(Icons.inbox_outlined), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person_3_sharp), label: "Profile")
        ],
        showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: const Color(0xFFB45A9B),
      unselectedItemColor: Colors.black,

    );

  }
}
