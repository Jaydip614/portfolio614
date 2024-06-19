import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    super.key,
    required this.title,
    required this.isMobile,
  });

  final String title;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: isMobile == true ? 30 : 50,),
        Text(title,
          style: titleTextStyle(
            fontSize: isMobile == true ? 27 : 36,
          ),
        ),
        SizedBox(height: isMobile == true ? 10 : 12,),
        Container(
          width: isMobile == true ? 35 : 45,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: const Color(0xFF8E05C2),
          ),
        ),
        SizedBox(height: isMobile == true ? 16 : 20,),
      ],
    );
  }
}
