// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class Cardpayment extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final Color color;

  const Cardpayment({super.key,
 required this.cardNumber,
 required this.balance,
 required this.expiryMonth,
 required this.expiryYear,
 required this.color
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15.0),
      child: Container(
                padding: EdgeInsets.all(25),
                width: 300,
               
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balance",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 16,
                      color: Colors.white),),
                      SizedBox(height: 10,),
                    Text("\$"+balance.toString(),style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 28,
                      color: Colors.white),),
                      SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //card number
                        Text(cardNumber.toString(),style: TextStyle(color: Colors.white),),
                        //issue date
                        Text(expiryMonth.toString()+"/"+expiryYear.toString(),style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                  
                ),
              ),
    ) ;
  }
}