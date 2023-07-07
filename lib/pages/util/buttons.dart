// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String imageAddress;
  final String buttonText;
  final Color color;
  const button({super.key,
  required this.imageAddress,
  required this.buttonText,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 20,
                  spreadRadius: 2,
                )
              ]),
          child: Image.asset(imageAddress),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          buttonText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
