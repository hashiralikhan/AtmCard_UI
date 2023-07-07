import 'package:flutter/material.dart';

class FunctionClip extends StatelessWidget {
  final IconData icon;
  final String pname;
  const FunctionClip({super.key,
 required this.icon,
 required this.pname,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: EdgeInsets.symmetric(horizontal:30,vertical: 20),
            child: Column(children: [
              Row(
                children: [
                  Icon(icon,size: 20,),
                  SizedBox(width: 15,),
                  Text(pname),
                ],
              )
            ],),
          );
  }
}