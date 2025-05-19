import 'package:flutter/material.dart';
import 'package:quiz/styles/app_colors.dart';
class QuestionOption extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const QuestionOption({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selected ? AppColors.secondaryColor : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? AppColors.darkSecondaryColor : Colors.white30,
          ),
        ),
        child: Row(
          children: [
            Icon(
              selected ? Icons.check_circle : Icons.radio_button_unchecked,
              color: selected ? AppColors.primaryColor : Colors.black,
            ),
            SizedBox(width: 12),
            Expanded(child: Text(text, style: TextStyle(fontSize: 18,color:AppColors.primaryColor ))),
          ],
        ),
      ),
    );
  }
}
