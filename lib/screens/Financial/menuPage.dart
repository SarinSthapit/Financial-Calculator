// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';
import 'package:financial_calculator/screens/Financial/B_C_ratio.dart';
import 'package:financial_calculator/screens/Financial/PMT.dart';
import 'package:financial_calculator/screens/Financial/PV.dart';
import 'package:financial_calculator/screens/Financial/homePage.dart';
import 'package:financial_calculator/screens/Financial/rate.dart';
import 'package:financial_calculator/screens/Financial/timePeriod.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 24,
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.info,
              size: 24,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Economics",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 35,
                          color: Colors.grey[600]),
                    ),
                    Text(
                      "Calculator",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 35,
                          color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 36, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 155,
                      child: ElevatedButton.icon(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.amber,
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        icon: Icon(
                          // <-- Icon
                          Icons.calculate,
                          size: 55.0,
                        ),
                        label: Text(
                          'Future Value',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ),
                        ), // <-- Text
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 155,
                      child: ElevatedButton.icon(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.amber,
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PresentValue()),
                          );
                        },
                        icon: Icon(
                          // <-- Icon
                          Icons.calculate,
                          size: 55.0,
                        ),
                        label: Text(
                          'Present Value',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ),
                        ), // <-- Text
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 155,
                      child: ElevatedButton.icon(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.amber,
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InterestRate()),
                          );
                        },
                        icon: Icon(
                          // <-- Icon
                          Icons.percent_outlined,
                          size: 55.0,
                        ),
                        label: Text(
                          'Interest Rate',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ),
                        ), // <-- Text
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 155,
                      child: ElevatedButton.icon(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.amber,
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TimePeriod()),
                          );
                        },
                        icon: Icon(
                          // <-- Icon
                          Icons.timer,
                          size: 55.0,
                        ),
                        label: Text(
                          'Time Period',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ),
                        ), // <-- Text
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Container(
                      height: 120,
                      width: 155,
                      child: ElevatedButton.icon(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.amber,
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Payment()),
                          );
                        },
                        icon: Icon(
                          // <-- Icon
                          Icons.pie_chart,
                          size: 55.0,
                        ),
                        label: Text(
                          'PMT',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ),
                        ), // <-- Text
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 155,
                      child: ElevatedButton.icon(
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.amber,
                            hoverColor: Colors.deepOrange,
                            focusColor: Colors.amberAccent),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => B_C_Ratio()),
                          );
                        },
                        icon: Icon(
                          // <-- Icon
                          Icons.rate_review_rounded,
                          size: 55.0,
                        ),
                        label: Text(
                          'B-C Ratio',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500],
                          ),
                        ), // <-- Text
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
