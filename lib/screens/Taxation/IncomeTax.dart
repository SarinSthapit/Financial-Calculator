// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:financial_calculator/utils/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class IncomeTax extends StatefulWidget {
  const IncomeTax({super.key});

  @override
  State<IncomeTax> createState() => _IncomeTaxState();
}

class _IncomeTaxState extends State<IncomeTax> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();

  String selected = "";
  late double tax;

  void TaxCalculation() {
    final marital_status = dropdownValue;
    final income = double.parse(_controller2.text);
    final Tax;

    switch (marital_status) {
      case "Unmarried":
        if (income <= 500000) {
          Tax = 0.01 * income;
        } else if (income > 500000 && income <= 700000) {
          Tax = 5000 + 0.1 * (income - 500000);
        } else if (income > 700000 && income <= 1000000) {
          Tax = 5000 + 20000 + 0.2 * (income - 700000);
        } else if (income > 1000000 && income <= 2000000) {
          Tax = 5000 + 20000 + 60000 + 0.3 * (income - 1000000);
        } else if (income > 2000000) {
          Tax = Tax = 5000 + 20000 + 60000 + 300000 + 0.36 * (income - 2000000);
        } else {
          Tax = null;
        }
        break;
      case "Married":
        if (income <= 600000) {
          Tax = 0.01 * income;
        } else if (income > 600000 && income <= 800000) {
          Tax = 6000 + 0.1 * (income - 600000);
        } else if (income > 800000 && income <= 1100000) {
          Tax = 6000 + 20000 + 0.2 * (income - 800000);
        } else if (income > 1100000 && income <= 2000000) {
          Tax = 6000 + 20000 + 60000 + 0.3 * (income - 1100000);
        } else if (income > 2000000) {
          Tax = Tax = 6000 + 20000 + 60000 + 270000 + 0.36 * (income - 2000000);
        } else {
          Tax = null;
        }
        break;
      default:
        Tax = 0;
    }

    setState(() {
      tax = Tax.toDouble();
    });
  }

  String dropdownValue = "Unmarried";
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
                          "Income",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          "Tax",
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
                        "Marital Status",
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
                            child: Text("Unmarried"),
                            value: "Unmarried",
                          ),
                          DropdownMenuItem(
                            child: Text("Married"),
                            value: "Married",
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
                      inputForm(
                        title: "Annual Income",
                        hintText: "In Rupees",
                        controller: _controller2,
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
                                          title: "Annual Tax",
                                          amount: tax,
                                        ),
                                        result(
                                          title: "Monthly Tax",
                                          amount: tax / 12,
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
