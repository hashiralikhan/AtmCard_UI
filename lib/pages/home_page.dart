// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:cards/pages/exercise.dart';
import 'package:cards/pages/util/buttons.dart';
import 'package:cards/pages/util/card_payment.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //navbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("My ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold ),),
                      Text("Cards",style: TextStyle(fontSize: 24,color: Colors.grey[700] ),),
                      
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                    color: Colors.grey[500],
                    shape: BoxShape.circle
                  ),
                    child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  Cardpayment(cardNumber: 54635343, balance: 245.00, expiryMonth: 06, expiryYear: 28, color: Colors.black),
                  Cardpayment(cardNumber: 54534363, balance: 5645.00, expiryMonth: 08, expiryYear: 284, color: Colors.amber),
                  Cardpayment(cardNumber: 83435463, balance: 2895.00, expiryMonth: 12, expiryYear: 29, color: Colors.red)
                ],
              ),
            ),
            SizedBox(height: 20,),
            SmoothPageIndicator(controller: _controller, count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),),
                        SizedBox(height: 20,),
                        // 3 button pay + bill +send
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                               button(imageAddress: 'lib/images/money.jpg', buttonText: "pay", color: Colors.white),
                                               button(imageAddress: 'lib/images/bill.jpg', buttonText: "Bill", color: Colors.white),
                                               button(imageAddress: 'lib/images/mobile-money-transfer-icon.png', buttonText: "Transcation", color: Colors.amber),
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Expanded(child: ListView(
                          children: [
                            Exercise(icon: Icons.abc, exerName: "ftrtu", noOfExercise: 76, color: Colors.black54)
                          ],

                        ),),
                        

          ],
        ),
      ),
    );
  }
}