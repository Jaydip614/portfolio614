import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';

class MobilePageTitle extends StatelessWidget {
  const MobilePageTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        Text(title,
          style: textStyleBold(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          width: 35,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: const Color(0xFF8E05C2),
          ),
        ),
        const SizedBox(height: 16,),
      ],
    );
  }
}
