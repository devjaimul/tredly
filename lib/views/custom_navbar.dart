import 'package:flutter/material.dart';
import 'package:tredly/views/favourite.dart';
import 'package:tredly/views/history_screen.dart';
import 'package:tredly/views/profile.dart';

import '../utils/app_colors.dart';
import 'home_screen.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  List<Widget> screen=[
    const HomeScreen(),
    const BrowseScreen(),
    Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),
    const HistoryScreen(),
   const ProfileScreen()

  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedItemColor: Colors.black.withOpacity(0.6),
          showUnselectedLabels: true,
          // showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border),
                label: "Favourite"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.shopping_cart),
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.list_alt_outlined),
                icon: Icon(Icons.list_alt_outlined), label: "Order History"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
