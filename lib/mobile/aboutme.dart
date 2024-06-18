import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/aboutme_data.dart';

import '../widgets/social_card.dart';

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(height: 30,),
        const Text("ABOUT ME",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'SourceSans3-Bold',
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          width: 35,
          height: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: const Color(0xFF8E05C2),
          ),
        ),
        const SizedBox(height: 16,),
        Text(subTitleMobile,
            style: const TextStyle(
              fontSize: 17,
              fontFamily: 'SourceSans3-Regular',
              color: Colors.black54,
            ),
          textAlign: TextAlign.center,
          ),
        const SizedBox(height: 35,),
        SizedBox(
          width: 250,
          height: 250,
          child: Image.asset(myImage),
        ),
        const SizedBox(height: 30,),
        SizedBox(
              width: 270,
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for(int i=0; i<myInfo.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            Icon(myInfo[i]['icon'],
                              color: const Color(0xFFD35DFF),
                            ),
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
        const SizedBox(height: 30,),
        const Text('Get to know me!',
            style: TextStyle(
                fontFamily: 'SourceSans3-Bold',
                fontWeight: FontWeight.bold,
                fontSize: 21
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
            style: const TextStyle(
              fontSize: 17,
              fontFamily: 'SourceSans3-Regular',
              color: Colors.black87,
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
