import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/aboutme_data.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import 'package:jaydipbaraiya/widgets/page_subtitle.dart';
import '../widgets/page_title.dart';
import '../widgets/social_card.dart';

class WebAboutMe extends StatelessWidget {
  const WebAboutMe({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width / 2;

    return Column(
          children: [
            const PageTitle(title: 'ABOUT', isMobile: false,),
            PageSubTitle(subTitle: subTitle, isMobile: false,),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50, left: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 275,
                            height: 275,
                            child: Image.asset(myImage),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 25, left: 20),
                            width: 275,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for(int i=0; i<myInfo.length; i++)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    children: [
                                      Icon(myInfo[i]['icon'], color: MyColors.purple10,),
                                      const SizedBox(width: 13,),
                                      Text(myInfo[i]['data'],
                                        style: regularTextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
                  Container(
                      constraints: const BoxConstraints(
                        maxWidth: 675,
                      ),
                      width: screenWidth / 1.1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30,),
                          Text('Get to know me!',
                            style: boldTextStyle(
                              fontSize: 27,
                            ),
                          ),
                          for(int i=0; i<paragraphs.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(paragraphs[i],
                              style: regularTextStyle(
                                fontSize: 18.5,
                              ),
                              textAlign: TextAlign.justify
                            ),
                          ),
                          const SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              for(int i=0; i<5; i++)
                                SocialCard(
                                  size: 56,
                                  rightPadding: 20,
                                  image: socialsData[i]['image'],
                                  link: socialsData[i]['link'],
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                ],
              ),
            const SizedBox(height: 75,),
          ],
        );
  }
}


