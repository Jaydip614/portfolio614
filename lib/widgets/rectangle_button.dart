import 'package:flutter/material.dart';
import '../styles/mycolors.dart';
import '../styles/textstyles.dart';

class RectangleButton extends StatelessWidget {
  const RectangleButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.isMobile,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: MyColors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        child: Text(text,
            style: isMobile == true ? regularTextStyle(
              fontSize: 20,
              color: MyColors.white,
            ) : titleTextStyle(
              fontSize: 20,
              color: MyColors.white,
            ),
        ),
      ),
    );
  }
}
