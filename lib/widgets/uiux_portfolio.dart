import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/widgets/rectangle_button.dart';

class UiUxPortfolio extends StatelessWidget {
  const UiUxPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25,
      right: 50,
      child: Row(
        children: [
          RectangleButton(
            onPressed: (){},
            isMobile: false,
            text: 'UI/UX',
          ),
        ],
      ),
    );
  }
}
