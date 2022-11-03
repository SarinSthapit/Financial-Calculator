// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields

import 'dart:math';
import 'package:financial_calculator/screens/Calculator/calculator.dart';
import 'package:financial_calculator/screens/Taxation/TaxMenuPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:financial_calculator/screens/Financial/menuPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: EconomicsApp(),
      debugShowCheckedModeBanner: false,
    ));

class EconomicsApp extends StatefulWidget {
  const EconomicsApp({super.key});

  @override
  State<EconomicsApp> createState() => _EconomicsAppState();
}

class _EconomicsAppState extends State<EconomicsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MenuPage(),
    Taxation(),
    SimpleCalculator(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 9,
          ),
          child: GNav(
            color: Colors.grey,
            activeColor: Colors.grey[800],
            tabBackgroundColor: Colors.grey.withOpacity(0.9),
            gap: 8.5,
            padding: EdgeInsets.all(16),
            onTabChange: _onItemTapped,
            tabs: [
              GButton(
                icon: Icons.monetization_on,
                text: 'Economics',
              ),
              GButton(
                icon: Icons.car_repair_rounded,
                text: 'Taxation',
              ),
              GButton(
                icon: Icons.calculate_sharp,
                text: 'Simple Calculator',
              ),
            ],
          ),
        ));
  }
}
