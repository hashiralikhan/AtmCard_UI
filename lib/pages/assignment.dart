


import 'package:cards/pages/function_clip.dart';
import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 37, 37),
                
              ),
              child: Row(
                children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 45.0),
                   child: CircleAvatar(
                             backgroundImage: AssetImage('lib/images/money.jpg'),
                             radius: 30,
                           ),
                           
                 ),
                 Text('Hashir Ali',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                
      
                ],
                
              ),
              
            ),
            
           FunctionClip(icon: Icons.message, pname: 'Messages'),
           FunctionClip(icon: Icons.support, pname: 'Support'),
           FunctionClip(icon: Icons.account_box_sharp, pname: 'Contact'),
           FunctionClip(icon: Icons.question_mark_outlined, pname: 'FAQ'),
           
          ],
        ),

        Padding(
              padding: EdgeInsets.only(top:170.0,left: 30,right: 30),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people,size: 30,),
                        SizedBox(width: 9,),
                        Text("Services Dashboard")
                      ],
                    ),
                    Icon(Icons.toggle_on,size: 30,)
                  ],
                ),
              ),
            ),


        
        ],
      ),
    );
  }
}