// question_progress.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// ignore: must_be_immutable
class QuestionProgress extends StatelessWidget {
  final int current; 
  final int total;   
   
   QuestionProgress({
    super.key,
    required this.current,
    required this.total,
  });
  List<SvgPicture> svgImages = [
      SvgPicture.asset('assets/images/q1.svg', width: 30, height: 30),
      SvgPicture.asset('assets/images/q3.svg', width: 50, height: 30),
      SvgPicture.asset('assets/images/q3.svg', width: 30, height: 30),
      SvgPicture.asset('assets/images/q1.svg', width: 30, height: 30),
    ];  // List 
  @override
  Widget build(BuildContext context) {
    return 
        Container(
        
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
          children: [
          svgImages[current - 1], // Display the SVG image for the current question
          SizedBox(width: 8),
          Text(
            'Question $current', 
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        SizedBox(width: 12),
        Text(
          'of $total',  
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        ],
      ),  
    );
  }
}
