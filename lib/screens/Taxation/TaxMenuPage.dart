// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';
import 'package:financial_calculator/screens/Financial/B_C_ratio.dart';
import 'package:financial_calculator/screens/Financial/PMT.dart';
import 'package:financial_calculator/screens/Financial/PV.dart';
import 'package:financial_calculator/screens/Financial/homePage.dart';
import 'package:financial_calculator/screens/Financial/rate.dart';
import 'package:financial_calculator/screens/Financial/timePeriod.dart';
import 'package:financial_calculator/utils/colors.dart';
import 'package:flutter/material.dart';

class Taxation extends StatefulWidget {
  const Taxation({super.key});

  @override
  State<Taxation> createState() => _TaxationState();
}

class _TaxationState extends State<Taxation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 24,
        backgroundColor: BoxBlue,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.info,
              size: 24,
              color: Colors.grey[100],
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: BoxBlue,
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
                          "Tax",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 35,
                              color: Colors.white70),
                        ),
                        Text(
                          "Calculator",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 35,
                              color: Colors.white70),
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
                              backgroundColor: SmallBlue,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.motorcycle_rounded,
                              size: 55.0,
                            ),
                            label: Text(
                              'Two Wheeler',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PresentValue()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.car_crash,
                              size: 55.0,
                            ),
                            label: Text(
                              'Four Wheeler',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InterestRate()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.bus_alert,
                              size: 55.0,
                            ),
                            label: Text(
                              'Six Wheeler',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TimePeriod()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.fire_truck,
                              size: 55.0,
                            ),
                            label: Text(
                              'Eight Wheeler',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
                                backgroundColor: SmallBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.perm_identity,
                              size: 55.0,
                            ),
                            label: Text(
                              'License Renew',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
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
        ),
      ),
    );
  }
}
