// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields
import 'dart:math';

import 'package:flutter/material.dart';

class B_C_Ratio extends StatefulWidget {
  const B_C_Ratio({super.key});

  @override
  State<B_C_Ratio> createState() => _B_C_RatioState();
}

class _B_C_RatioState extends State<B_C_Ratio> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  String selected = "";
  late double B_C_Ratio;

  void B_C_RatioCalculation() {
    final ratio = int.parse(_controller1.text) / int.parse(_controller2.text);

    setState(() {
      B_C_Ratio = ratio;
    });
  }

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
                      "B-C Ratio",
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
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                inputForm(
                  title: "Benefit from the Project",
                  hintText: "Amount in Rupees",
                  controller: _controller1,
                ),
                inputForm(
                  title: "Cost of the Project",
                  hintText: "Amount in Rupees",
                  controller: _controller2,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    B_C_RatioCalculation();
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
                              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
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
                                    title: "B-C Ratio",
                                    amount: B_C_Ratio,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
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
