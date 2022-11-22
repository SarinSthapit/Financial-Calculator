// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';
import 'package:financial_calculator/screens/InfoPage/About.dart';
import 'package:financial_calculator/screens/Financial/B_C_ratio.dart';
import 'package:financial_calculator/screens/Financial/PMT.dart';
import 'package:financial_calculator/screens/Financial/PV.dart';
import 'package:financial_calculator/screens/Financial/homePage.dart';
import 'package:financial_calculator/screens/Financial/rate.dart';
import 'package:financial_calculator/screens/Financial/timePeriod.dart';
import 'package:financial_calculator/screens/Taxation/2Wheeler.dart';
import 'package:financial_calculator/screens/Taxation/4Wheeler.dart';
import 'package:financial_calculator/screens/Taxation/IncomeTax.dart';
import 'package:financial_calculator/screens/Taxation/License.dart';
import 'package:financial_calculator/screens/Taxation/Machinery.dart';
import 'package:financial_calculator/screens/Taxation/Public.dart';
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
        toolbarHeight: 32,
        backgroundColor: BoxBlue,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(
                Icons.info,
                size: 24,
                color: Colors.grey[100],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: BoxLightGrey,
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
                padding: const EdgeInsets.fromLTRB(30, 36, 30, 80),
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
                              backgroundColor: LessBlue,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TwoWheeler()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.directions_bike,
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
                            style:
                                IconButton.styleFrom(backgroundColor: LessBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FourWheel()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.directions_car_filled_outlined,
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
                            style:
                                IconButton.styleFrom(backgroundColor: LessBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PublicVehicle()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.directions_bus_filled_outlined,
                              size: 55.0,
                            ),
                            label: Text(
                              'Public Vehicle',
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
                            style:
                                IconButton.styleFrom(backgroundColor: LessBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Machinery()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.local_shipping,
                              size: 55.0,
                            ),
                            label: Text(
                              'Heavy Vehicle',
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
                            style:
                                IconButton.styleFrom(backgroundColor: LessBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LicenseTax()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.badge_outlined,
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
                            style:
                                IconButton.styleFrom(backgroundColor: LessBlue),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IncomeTax()),
                              );
                            },
                            icon: Icon(
                              // <-- Icon
                              Icons.attach_money,
                              size: 55.0,
                            ),
                            label: Text(
                              'Income Tax',
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
