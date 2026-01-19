import 'package:flutter/material.dart';

import '../view/Profile/Profilepage.dart';
import '../view/List of cars and Details/carList.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index=0;
  List<Widget>pages=[
    ListOfData(),
    ProfilePage()
  ];
  void onTabChanged(int value) {
    setState(() {
      index = value;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(child: pages[index]),
    
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: onTabChanged,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home")
,
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")]),
    
    );
  }
}
