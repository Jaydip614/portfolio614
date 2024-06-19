import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';

class WebPageTitle extends StatelessWidget {
  const WebPageTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50,),
        Text(title,
          style: textStyleBold(
            fontSize: 36
          ),
        ),
        const SizedBox(height: 12,),
        Container(
          width: 45,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: const Color(0xFF8E05C2),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
