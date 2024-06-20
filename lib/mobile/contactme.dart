import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/widgets/rectangle_button.dart';
import '../constants/contactme_data.dart';
import '../styles/mycolors.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';

class MobileContactMe extends StatelessWidget {
  const MobileContactMe({super.key});

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
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              const PageTitle(title: 'CONTACT', isMobile: true,),
              PageSubTitle(subTitle: subTitle, isMobile: false,),
              const SizedBox(height: 35,),
              Container(
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.white01,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                          hintText: 'Your Name',
                          maxLines: 1,
                          ),
                      const CustomTextField(
                        hintText: 'Your Email',
                        maxLines: 1,
                      ),
                      const CustomTextField(
                        hintText: 'Subject',
                        maxLines: 1,
                      ),
                      const CustomTextField(
                        hintText: 'Your Name',
                        maxLines: 8,
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RectangleButton(
                              onPressed: () {},
                              text: 'SUBMIT',
                              isMobile: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,)
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
  });

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
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
    );
  }
}
