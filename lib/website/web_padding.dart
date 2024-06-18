import 'package:flutter/material.dart';

class WebMainPadding extends StatelessWidget {
  const WebMainPadding({
    super.key,
    this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: 50,
        ),
      child: child,
    );
  }
}
