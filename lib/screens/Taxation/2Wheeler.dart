import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class TwoWheeler extends StatefulWidget {
  const TwoWheeler({super.key});

  @override
  State<TwoWheeler> createState() => _TwoWheelerState();
}

class _TwoWheelerState extends State<TwoWheeler> {
  TextEditingController _controller1 = new TextEditingController();

  String selected = "";
  late double B_C_Ratio;

  void TaxCalculation() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
