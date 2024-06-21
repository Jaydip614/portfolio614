import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/footer_data.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import 'package:jaydipbaraiya/widgets/verify_me.dart';
import 'dart:js' as js;


class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          width: screenWidth,
          color: MyColors.footerColor,
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Text(title,
                style: boldTextStyle(
                  fontSize: 25,
                  color: MyColors.white,
                ),
              ),
              const SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Text(subTitle,
                  style: regularItalicTextStyle(
                    fontSize: 15,
                    color: MyColors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int i=0; i<socialLinks.length; i++)
                    CustomSocialIcon(
                      size: socialLinks[i]['size'],
                      image: socialLinks[i]['image'],
                      link: socialLinks[i]['link'],
                    ),
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 15,
                        height: 15,
                        child: Image.asset(copyRightImage),
                      ),
                      const SizedBox(height: 3,)
                    ],
                  ),
                  const SizedBox(width: 2,),
                  const Text('Copyright 2024. All Rights Reserved',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Designed by ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      js.context.callMethod('open', [portfolioLink]);
                    },
                    child: const Text('Jaydip Baraiya',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        // decoration: TextDecoration.underline,
                        // decorationColor: Colors.white,
                        // decorationThickness: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,)
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: InkWell(
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VerifyMe()),
              );
            },
            child: Container(width: 20, height: 20, color: MyColors.footerColor,),
          ),
        )
      ],
    );
  }
}

class CustomSocialIcon extends StatelessWidget {
  const CustomSocialIcon({
    super.key,
    required this.size,
    required this.image,
    required this.link,
  });

  final double size;
  final String image;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 7),
      child: InkWell(
        onTap: (){
          js.context.callMethod('open', [link]);
        },
        child: SizedBox(
          width: size,
          height: size,
          child: Image.asset(image),
        ),
      ),
    );
  }
}

