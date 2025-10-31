import 'package:flutter/material.dart';
import 'package:library_system/features/home/presentation/views/home_view.dart';
import '../../../../../core/utils/app_color.dart';

class NavigationBarBody extends StatefulWidget {
  const NavigationBarBody({super.key});

  @override
  NavigationBarBodyState createState() => NavigationBarBodyState();
}

class NavigationBarBodyState extends State<NavigationBarBody> {
  int selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> views = const [
    HomeView(),
   SizedBox(),
    SizedBox(),
   SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap:changeTab,
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.buttonColor,
        unselectedItemColor: const Color(0xff67687E),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.local_library_rounded), label: "library"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      backgroundColor: Colors.white,
      body: views[selectedIndex],
    );
  }
}

