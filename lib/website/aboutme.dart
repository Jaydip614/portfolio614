import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/aboutme_data.dart';
import '../widgets/social_card.dart';

class WebAboutMe extends StatelessWidget {
  const WebAboutMe({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width / 2;

    return Column(
          children: [
            const SizedBox(height: 50,),
            const Text("ABOUT ME",
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'SourceSans3-Bold',
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              width: 45,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xFF8E05C2),
              ),
            ),
            const SizedBox(height: 20,),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700,),
              child: Text(subTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'SourceSans3-Regular',
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
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
                            margin: const EdgeInsets.only(top: 30, left: 15),
                            width: 275,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for(int i=0; i<myInfo.length; i++)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    children: [
                                      Icon(myInfo[i]['icon'], color: const Color(0xFFD35DFF),),
                                      const SizedBox(width: 13,),
                                      Text(myInfo[i]['data'],
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'SourceSans3-Regular',
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
                          const Text('Get to know me!',
                            style: TextStyle(
                                fontFamily: 'SourceSans3-Bold',
                                fontWeight: FontWeight.bold,
                                fontSize: 27
                            ),
                          ),
                          for(int i=0; i<paragraphs.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(paragraphs[i],
                              style: const TextStyle(
                                fontSize: 18.5,
                                fontFamily: 'SourceSans3-Regular',
                                color: Colors.black87,
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


