// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:financial_calculator/utils/colors.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class FourWheel extends StatefulWidget {
  const FourWheel({super.key});

  @override
  State<FourWheel> createState() => _FourWheelState();
}

class _FourWheelState extends State<FourWheel> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();

  String selected = "";
  late double tax;

  void TaxCalculation() {
    final type = dropdownValue;
    final prov = dropdownValue2;
    final cc = double.parse(_controller2.text);
    final Tax;

    if (prov == "Province 1") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 21000;
          } else if (cc <= 1500) {
            Tax = 23000;
          } else if (cc <= 2000) {
            Tax = 30000;
          } else if (cc <= 2500) {
            Tax = 35500;
          } else if (cc <= 2900) {
            Tax = 41000;
          } else if (cc > 2901) {
            Tax = 58500;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else if (prov == "Province 2") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 20000;
          } else if (cc <= 1500) {
            Tax = 22000;
          } else if (cc <= 2000) {
            Tax = 25000;
          } else if (cc <= 2500) {
            Tax = 35000;
          } else if (cc <= 2900) {
            Tax = 40000;
          } else if (cc > 2901) {
            Tax = 55000;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else if (prov == "Province 3") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 22000;
          } else if (cc <= 1500) {
            Tax = 25000;
          } else if (cc <= 2000) {
            Tax = 27000;
          } else if (cc <= 2500) {
            Tax = 37000;
          } else if (cc <= 3000) {
            Tax = 50000;
          } else if (cc <= 3500) {
            Tax = 60500;
          } else if (cc > 3500) {
            Tax = 65000;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else if (prov == "Province 4") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 20000;
          } else if (cc <= 1500) {
            Tax = 22000;
          } else if (cc <= 2000) {
            Tax = 25000;
          } else if (cc <= 2500) {
            Tax = 34000;
          } else if (cc <= 2900) {
            Tax = 40000;
          } else if (cc > 2900) {
            Tax = 56000;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else if (prov == "Province 5") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 20000;
          } else if (cc <= 1500) {
            Tax = 22000;
          } else if (cc <= 2000) {
            Tax = 25000;
          } else if (cc <= 2500) {
            Tax = 34000;
          } else if (cc <= 2900) {
            Tax = 39000;
          } else if (cc > 2900) {
            Tax = 55000;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else if (prov == "Province 6") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 19000;
          } else if (cc <= 1500) {
            Tax = 21000;
          } else if (cc <= 2000) {
            Tax = 23000;
          } else if (cc <= 2500) {
            Tax = 32000;
          } else if (cc <= 2900) {
            Tax = 37000;
          } else if (cc > 2900) {
            Tax = 53000;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else if (prov == "Province 7") {
      switch (type) {
        case "Electrical Engine":
          if (cc >= 350 && cc <= 1000) {
            Tax = 1500;
          } else if (cc > 1000 && cc <= 1500) {
            Tax = 2000;
          } else if (cc > 1500) {
            Tax = 3000;
          } else {
            Tax = null;
          }
          break;
        case "Fuel Engine":
          if (cc <= 1000) {
            Tax = 19000;
          } else if (cc <= 1500) {
            Tax = 21000;
          } else if (cc <= 2000) {
            Tax = 23000;
          } else if (cc <= 2500) {
            Tax = 32000;
          } else if (cc <= 2900) {
            Tax = 37000;
          } else if (cc > 2900) {
            Tax = 53000;
          } else {
            Tax = null;
          }
          break;
        default:
          Tax = 0;
      }
    } else {
      Tax = null;
    }

    setState(() {
      tax = Tax.toDouble();
    });
  }

  String dropdownValue = "Fuel Engine";
  String dropdownValue2 = "Province 1";

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
                          "Four Wheeler",
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
                            child: Text("Fuel Engine"),
                            value: "Fuel Engine",
                          ),
                          DropdownMenuItem(
                            child: Text("Electrical Engine"),
                            value: "Electrical Engine",
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
                        title: "Cubic Capacity",
                        hintText: "In cubic centimetres",
                        controller: _controller2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Province",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DropdownButton(
                        value: dropdownValue2,
                        items: [
                          DropdownMenuItem(
                            child: Text("Province 1"),
                            value: "Province 1",
                          ),
                          DropdownMenuItem(
                            child: Text("Province 2"),
                            value: "Province 2",
                          ),
                          DropdownMenuItem(
                            child: Text("Province 3"),
                            value: "Province 3",
                          ),
                          DropdownMenuItem(
                            child: Text("Province 4"),
                            value: "Province 4",
                          ),
                          DropdownMenuItem(
                            child: Text("Province 5"),
                            value: "Province 5",
                          ),
                          DropdownMenuItem(
                            child: Text("Province 6"),
                            value: "Province 6",
                          ),
                          DropdownMenuItem(
                            child: Text("Province 7"),
                            value: "Province 7",
                          ),
                        ],
                        onChanged: (value2) {
                          setState(() {
                            dropdownValue2 = value2!;
                          });
                        },
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
