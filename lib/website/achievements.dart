import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/achievements_data.dart';

import '../styles/page_title.dart';

class WebAchievements extends StatelessWidget {
  const WebAchievements({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const PageTitle(title: 'ACHIEVEMENTS', isMobile: false,),
        const SizedBox(height: 10,),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 1100,
          ),
          margin: const EdgeInsets.only(left: 100, right: 100),
          child: Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for(int i=0; i<3; i++)
                AchievementCard(
                  image: achievements[i]['image'],
                  title: achievements[i]['title'],
                  description: achievements[i]['description'],
                  time: achievements[i]['time'],
                ),
            ],
          ),
        ),
        const SizedBox(height: 50,)
      ],
    );
  }
}

class AchievementCard extends StatelessWidget {
  const AchievementCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.time,
  });

  final String image;
  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 385,
      decoration: BoxDecoration(
        // color: const Color(0xFFF1F2F5),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          )
        ]
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF1F2F5),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(image, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 20,),
                    Text(title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'SourceSans3-Bold',
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10,),
                    Text(description,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'SourceSans3-Regular',
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Text(time,
                  style: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'SourceSans3-Regular',
                    color: Colors.black45,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 335,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.open_in_new,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

