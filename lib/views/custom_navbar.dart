import 'package:flutter/material.dart';
import 'package:tredly/views/browse_screen.dart';

import '../utils/app_colors.dart';
import '../views/home_screen.dart';

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
    Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),
    Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),

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
                activeIcon: Icon(Icons.search),
                icon: Icon(Icons.search_outlined),
                label: "Browse"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.storefront_sharp),
                icon: Icon(Icons.storefront_rounded), label: "Store"),
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
