import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/home_data.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';

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
            top: 50,
          ),
          child: SizedBox(
              height: screenHeight,
              child: Row(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                        maxWidth: 650,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 75),
                      width: screenWidth / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(title,
                            style: textStyleBold(
                              fontSize: 52,
                            )
                          ),
                          const SizedBox(height: 15,),
                          Text(subTitle,
                            style: textStylePrimary(
                              fontSize: 21,
                              color: Colors.black87
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 50,),
                           FilledButton(
                                onPressed: (){
                                  onButtonTap(4);
                                },
                                style: FilledButton.styleFrom(
                                    backgroundColor: const Color(0xFF8E05C2),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                    ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                                  child: Text('PROJECTS',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontFamily: 'SourceSans3-Regular',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                          const SizedBox(height: 50,),
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

