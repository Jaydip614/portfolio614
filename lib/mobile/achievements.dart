import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/achievements_data.dart';

class MobileAchievements extends StatelessWidget {
  const MobileAchievements({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(height: 50,),
        const Text("ACHIEVEMENTS",
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
        const SizedBox(height: 30,),
        Container(
          constraints: const BoxConstraints(
            maxWidth: 1100,
          ),
          child: Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for(int i=0; i<achievements.length; i++)
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
      width: 300,
      height: 350,
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
            padding: const EdgeInsets.only(top: 21, left: 21, right: 21, bottom: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF1F2F5),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(image, fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 17,),
                    Text(title,
                      style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'SourceSans3-Bold',
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8,),
                    Text(description,
                      style: const TextStyle(
                        fontSize: 15,
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
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.open_in_new,
                      size: 21,
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

