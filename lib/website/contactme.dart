import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/widgets/rectangle_button.dart';
import '../constants/contactme_data.dart';
import '../styles/mycolors.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';

class WebContactMe extends StatelessWidget {
  const WebContactMe({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: screenHeight * 1.15,
          child: Image.asset('assets/images/myportfolio_back.png',
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
            width: screenWidth,
            child: Column(
              children: [
                const PageTitle(title: 'CONTACT', isMobile: false,),
                PageSubTitle(subTitle: subTitle, isMobile: false,),
                const SizedBox(height: 50,),
                Container(
                    margin: const EdgeInsets.only(left: 75, right: 75),
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.white01,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              CustomTextField(
                                  width: 295,
                                  hintText: 'Your Name',
                                  maxLines: 1,
                                ),
                              SizedBox(width: 30,),
                              CustomTextField(
                                  width: 375,
                                  hintText: 'Your Email',
                                  maxLines: 1,
                                ),
                            ],
                          ),
                          const CustomTextField(
                              width: 800,
                              hintText: 'Subject',
                              maxLines: 1,
                            ),
                          const CustomTextField(
                              width: 800,
                              hintText: 'Message',
                              maxLines: 10,
                            ),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RectangleButton(
                                onPressed: () {},
                                text: 'SUBMIT',
                                isMobile: false,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                const SizedBox(height: 75,)
              ],
            ),
          ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.maxLines,
    required this.width,
  });

  final double width;
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        width: width,
        child: TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            fillColor: MyColors.white,
            hoverColor: MyColors.white,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none
            ),
          ),
        ),
      ),
    );
  }
}
