// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields

import 'dart:math';

import 'package:flutter/material.dart';

class PresentValue extends StatefulWidget {
  const PresentValue({super.key});

  @override
  State<PresentValue> createState() => _PresentValueState();
}

class _PresentValueState extends State<PresentValue> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  String selected = "";
  late double PV;

  void PVCalculation() {
    final compounding = dropdownValue;
    final rate = double.parse(_controller3.text) / 100;
    final amount = int.parse(_controller1.text);
    final presentValue;

    switch (compounding) {
      case "Annually":
        presentValue = amount /
            (pow((1 + (rate)), int.parse(_controller4.text))).toDouble();
        break;
      case "Quarterly":
        presentValue = amount /
            (pow((1 + (rate / 4)), int.parse(_controller4.text) * 4))
                .toDouble();
        break;
      case "Monthly":
        presentValue = amount /
            (pow((1 + (rate / 12)), int.parse(_controller4.text) * 12))
                .toDouble();

        break;
      case "Semi-annually":
        presentValue = amount /
            (pow((1 + (rate / 2)), int.parse(_controller4.text) * 2))
                .toDouble();
        break;
      default:
        presentValue = 0;
    }
    setState(() {
      PV = presentValue;
    });
  }

  String dropdownValue = "Annually";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
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
        backgroundColor: Colors.orangeAccent,
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
      body: body(),
    );
  }

  Widget body() {
    return Container(
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
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
                      "Present Value",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      "Calculator",
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
                  inputForm(
                    title: "Future Worth",
                    hintText: "Amount in Rupees",
                    controller: _controller1,
                  ),
                  inputForm(
                    title: "Interest Rate",
                    hintText: "Expressed in percentage",
                    controller: _controller3,
                  ),
                  Text(
                    "Compounding",
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
                        child: Text("Annually"),
                        value: "Annually",
                      ),
                      DropdownMenuItem(
                        child: Text("Quarterly"),
                        value: "Quarterly",
                      ),
                      DropdownMenuItem(
                        child: Text("Monthly"),
                        value: "Monthly",
                      ),
                      DropdownMenuItem(
                        child: Text("Semi-annually"),
                        value: "Semi-annually",
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  inputForm(
                    title: "Time Period",
                    hintText: "In years",
                    controller: _controller4,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      PVCalculation();
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      title: "Final Value (${dropdownValue})",
                                      amount: PV,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Container(
                                          height: 60,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.orangeAccent,
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
                        color: Colors.orangeAccent,
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
    );
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
            color: Colors.white,
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
}
