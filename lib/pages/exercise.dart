
import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final IconData icon;
  final String exerName;
  final int noOfExercise;
 final Color color;
  const Exercise({super.key,
  required this.icon,
    required this.exerName,
  required this.noOfExercise,
  required this.color,

  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: const EdgeInsets.all(16),
                     color: color,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(width: 12),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(noOfExercise.toString()+"Exercise")
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
