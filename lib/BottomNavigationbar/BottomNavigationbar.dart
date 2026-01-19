import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int index=1;
  List<String>pages=[
    "bfc ","xv"
  ];
  void onTabChanged(int value) {
    setState(() {
      index = value;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(child: Text(pages[index])),
    
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
