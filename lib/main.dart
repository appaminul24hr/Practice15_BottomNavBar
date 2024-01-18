import 'package:bottom_nav_bar/three.dart';
import 'package:bottom_nav_bar/two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'four.dart';
import 'one.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //variable and all pages create
  var currentindex = 0;
  final pages = [
    one(),
    two(),
    three(),
    four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        backgroundColor: Colors.deepOrange,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call, color: Colors.white), label: 'Call'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, color: Colors.white), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.white),
              label: 'Profile'),
        ],
//Ontab code
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
      //body page import code
      body: pages[currentindex],
    );
  }
}
