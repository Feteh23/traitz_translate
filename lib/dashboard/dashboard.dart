import 'package:facebook/dashboard/charts.dart';
import 'package:flutter/material.dart';
import 'package:facebook/facebook.dart';
import 'package:facebook/dashboard/home.dart';
import 'package:facebook/dashboard/profile.dart';
final PrimaryColor =  Color.fromARGB(255, 84, 48, 214);

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashbaordState();
}

class _DashbaordState extends State<Dashboard> {
  int _currentIndex=0;
  void NavigateBottomBar(int index){
    setState(() {
      _currentIndex=index;
    });
  }
  final List<Widget> _pages =[
Home(),
Chart(),
Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
       body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(251, 249, 249, 0.494), 
        onTap: NavigateBottomBar,
        currentIndex: _currentIndex,
       items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, ), label: 'Home'  ),
          BottomNavigationBarItem(icon: Icon(Icons.message,), label: 'Chart'),
          BottomNavigationBarItem(icon: Icon(Icons.person,), label: 'Profile')
        ],
      ),
   
    );
  }
}