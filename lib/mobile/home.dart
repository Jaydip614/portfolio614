import 'package:flutter/material.dart';
import '../styles/mycolors.dart';
import '../constants/home_data.dart';
import '../styles/textstyles.dart';
import '../widgets/rectangle_button.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({
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
        Center(
          child: Column(
            children: [
              const SizedBox(height: 100,),
              SizedBox(
                width: 275,
                child: Image.asset(vectorImage),
              ),
              const SizedBox(height: 30,),
              Text(title,
                style: boldTextStyle(
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 10,),
              Text(subTitleMobile,
                style: regularTextStyle(
                  fontSize: 17.5,
                  color: MyColors.black87
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50,),
              RectangleButton(
                onPressed: () {
                  onButtonTap(4);
                },
                isMobile: true,
                text: 'Projects',
              ),
            ],
          ),
        )
      ]
    );
  }
}
