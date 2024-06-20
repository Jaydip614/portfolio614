import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/aboutme_data.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';
import '../widgets/social_card.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const PageTitle(title: 'ABOUT', isMobile: true,),
        PageSubTitle(subTitle: subTitleMobile, isMobile: false,),
        const SizedBox(height: 35,),
        SizedBox(
          width: 250,
          height: 250,
          child: Image.asset(myImage),
        ),
        const SizedBox(height: 45,),
        SizedBox(
              width: 270,
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for(int i=0; i<myInfo.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15,),
                        child: Row(
                          children: [
                            Icon(myInfo[i]['icon'],
                              color: const Color(0xFFD35DFF),
                            ),
                            const SizedBox(width: 13,),
                            Text(myInfo[i]['data'],
                              style: regularTextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            ),
        const SizedBox(height: 30,),
        Text('Get to know me!',
            style: boldTextStyle(
              fontSize: 22,
            ),
          ),
        const SizedBox(height: 20,),
        for(int i=0; i<paragraphs.length; i++)
        Container(
          margin: const EdgeInsets.only(left: 32, right: 32, bottom: 15),
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: Text(paragraphs[i],
            style: regularTextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(height: 50,),
        Wrap(
          children: [
            for(int i=0; i<5; i++)
              SocialCard(
                size: 56,
                rightPadding: 15,
                image: socialsData[i]['image'],
                link: socialsData[i]['link'],
              )
          ],
        ),
        const SizedBox(height: 50,),
      ],
    );
  }
}
