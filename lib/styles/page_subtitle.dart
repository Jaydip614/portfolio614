import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';

class PageSubTitle extends StatelessWidget {
  const PageSubTitle({
    super.key,
    required this.subTitle,
    required this.isMobile,
  });

  final String subTitle;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32),
      constraints: const BoxConstraints(maxWidth: 700,),
      child: Text(subTitle,
        style: secondaryTextStyle(
          fontSize: isMobile == true ? 17 : 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
