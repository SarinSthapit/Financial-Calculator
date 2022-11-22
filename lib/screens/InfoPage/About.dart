// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:financial_calculator/screens/InfoPage/LicensePage.dart';
import 'package:financial_calculator/utils/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: BoxGrey,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.info_outlined,
              color: BoxGrey,
            ),
            title: const Text(
              'Licenses and Policy',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            selected: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LicensesPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
