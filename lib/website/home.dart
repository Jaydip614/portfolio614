import 'package:flutter/material.dart';
import '../styles/mycolors.dart';
import '../constants/home_data.dart';
import '../styles/textstyles.dart';
import '../widgets/rectangle_button.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({
    super.key,
    required this.onButtonTap,
  });
  final Function(int) onButtonTap;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
            height: screenHeight,
            child: Image.asset(backImage,
            fit: BoxFit.cover,
            ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.1,
            right: screenWidth * 0.1,
            top: 20,
          ),
          child: SizedBox(
              height: screenHeight,
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                        maxWidth: 675,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 75),
                      width: screenWidth / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(title,
                            style: titleTextStyle(
                              fontSize: 52,
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Text(subTitle,
                            style: regularTextStyle(
                              fontSize: 21,
                              color: MyColors.black87
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50,),
                          RectangleButton(
                            onPressed: () {
                              onButtonTap(4);
                            },
                            isMobile: false,
                            text: 'PROJECTS',
                           ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
        Positioned(
          right: screenWidth / 12,
          top: screenHeight / 4,
          child: SizedBox(
            width: screenWidth / 3.7,
            child: Image.asset(vectorImage),
          ),
        ),
      ],
    );
  }
}

