// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:financial_calculator/utils/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class PublicVehicle extends StatefulWidget {
  const PublicVehicle({super.key});

  @override
  State<PublicVehicle> createState() => _PublicVehicleState();
}

class _PublicVehicleState extends State<PublicVehicle> {
  String selected = "";
  late double tax;

  void TaxCalculation() {
    final type = dropdownValue;
    final Tax;

    if (type == "Tractor") {
      Tax = 4500;
    } else if (type == "Mini-Bus / Min-Truck") {
      Tax = 24500;
    } else if (type == "Bus / Truck") {
      Tax = 33000;
    } else {
      Tax = null;
    }
    setState(() {
      tax = Tax.toDouble();
    });
  }

  String dropdownValue = "Tractor";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: FloatingActionButton(
            backgroundColor: BoxBlue,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
          toolbarHeight: 30,
          backgroundColor: BoxBlue,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.info,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
        //drawer: NavigationDrawer(),
        body: Container(
          color: BoxLightGrey,
          child: Column(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  color: BoxBlue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Public",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          "Vehicle",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    padding: EdgeInsets.all(20),
                    children: [
                      Text(
                        "Vehicle Type",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DropdownButton(
                        value: dropdownValue,
                        items: [
                          DropdownMenuItem(
                            child: Text("Tractor"),
                            value: "Tractor",
                          ),
                          DropdownMenuItem(
                            child: Text("Mini-Bus / Min-Truck"),
                            value: "Mini-Bus / Min-Truck",
                          ),
                          DropdownMenuItem(
                            child: Text("Bus / Truck"),
                            value: "Bus / Truck",
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      GestureDetector(
                        onTap: () {
                          TaxCalculation();
                          Future.delayed(Duration.zero);
                          showModalBottomSheet(
                              isDismissible: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 30, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Result",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        result(
                                          title: "Total Tax",
                                          amount: tax,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Container(
                                              height: 60,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: LessBlue,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Recalculate",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: LessBlue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Calculate",
                              style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Widget result({required String title, required double amount}) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    trailing: Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Text(
        amount.toStringAsFixed(2),
        style: TextStyle(
          fontSize: 19,
        ),
      ),
    ),
  );
}

Widget inputForm(
    {required String title,
    required TextEditingController controller,
    required String hintText}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w100,
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
