import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:reflectly_flutter_loginpage/HomePageApp/HomePageApp.dart';
import 'package:reflectly_flutter_loginpage/TabsPages/Home.dart';
import 'package:reflectly_flutter_loginpage/TabsPages/Notifecation.dart';
import 'package:reflectly_flutter_loginpage/TabsPages/Photos.dart';
import 'package:reflectly_flutter_loginpage/TabsPages/Profile.dart';
import 'package:reflectly_flutter_loginpage/TabsPages/Search.dart';
//importing all the whatsapp clone tab pages


void main() => runApp(Diffult());

class Diffult extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatApp Clone Example',
      theme: ThemeData(
          primaryColor: Color(0XFF075E54),
          accentColor: Color(0XFF25D366) // green color for whatapp clone theme
      ),
      home: MyHomePage(_currentIndex),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(this.currentIndex);
  int currentIndex;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // total tab we are creating is 4 so : length is 4 : initialIndex is set to position 1
    _tabController = new TabController(length: 5, vsync: this, initialIndex: widget.currentIndex);
  }

  @override
  Widget build(BuildContext context) {

    final color1 = Color(0xF0689f9c);
    final colorIconNvagation = Colors.white;
    final double SizeIconNvagation = 35;
    return Scaffold(
      body:
        TabBarView(

          //this will work similar to fragment in android app
          controller: _tabController,
          //loading 4 pages in tabs
          children: <Widget>[HomePageApp(), Profile(),HomeP(),SearchP(),NotifcationP()],

        ),
        bottomSheet:Container(
          height: 60,
          color: color1,
          child :
           TabBar(
             onTap: (index) {
            setState(() {
              widget.currentIndex = index;
               index = widget.currentIndex;
            });},
            controller: _tabController,
             indicator: BoxDecoration(
                 color: Colors.white,
                 shape: BoxShape.circle,
             ),
             tabs: <Widget>[
            // here we are creating 4 Tabs
            Tab(
              icon: CircleAvatar(
                maxRadius: SizeIconNvagation-10,
                child: Icon(
                  Icons.home,
                  color: widget.currentIndex == 0 ? color1 : colorIconNvagation,
                  size: SizeIconNvagation,
                ),
                backgroundColor: widget.currentIndex == 0 ? colorIconNvagation : color1,
              ),
            ),
            Tab(
              icon: CircleAvatar(
                maxRadius: SizeIconNvagation-10,
                child: Icon(
                  Icons.search,
                  color: widget.currentIndex == 1 ? color1 : colorIconNvagation,
                  size: SizeIconNvagation,
                ),
                backgroundColor: widget.currentIndex == 1 ? colorIconNvagation : color1,
              ),
            ),
            Tab(
              icon: CircleAvatar(
                maxRadius: SizeIconNvagation-10,
                child: Icon(
                  Icons.photo,
                  color: widget.currentIndex == 2 ? color1 : colorIconNvagation,
                  size: SizeIconNvagation,
                ),
                backgroundColor: widget.currentIndex == 2 ? colorIconNvagation : color1,
              ),
            ),
            Tab(
              icon: CircleAvatar(
                maxRadius: SizeIconNvagation-10,
                child: Icon(
                  Icons.star_border,
                  color: widget.currentIndex == 3 ? color1 : colorIconNvagation,
                  size: SizeIconNvagation,
                ),
                backgroundColor: widget.currentIndex == 3 ? colorIconNvagation : color1,
              ),
            ),
            Tab(
              icon: CircleAvatar(
                maxRadius: SizeIconNvagation-10,
                child: Icon(
                  Icons.person,
                  color: widget.currentIndex == 4 ? color1 : colorIconNvagation,
                  size: SizeIconNvagation,
                ),
                backgroundColor: widget.currentIndex == 4 ? colorIconNvagation : color1,
              ),
            ),
          ],
        ),)

    );
  }
}