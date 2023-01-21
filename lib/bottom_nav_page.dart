import 'package:flutter/material.dart';
import 'package:flutterplayground/home_page.dart';
import 'package:flutterplayground/profile_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentPage = 0;
  Map<Widget, Widget> pages = {
    const HomePage():
        const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    const ProfilePage():
        const NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.keys.toList()[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: pages.values.toList(),
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
    );
  }
}
