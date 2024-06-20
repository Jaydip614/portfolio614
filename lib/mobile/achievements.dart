import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/achievements_data.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import '../styles/mycolors.dart';
import '../widgets/page_title.dart';
import 'dart:math' as math;
import 'dart:js' as js;

class MobileAchievements extends StatelessWidget {
  const MobileAchievements({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const PageTitle(title: 'ACHIEVEMENTS', isMobile: true,),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          constraints: const BoxConstraints(
            maxWidth: 900,
          ),
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
                  attachment: achievements[i]['attachment'],
                ),
            ],
          ),
        ),
        const SizedBox(height: 50,)
      ],
    );
  }
}

class AchievementCard extends StatefulWidget {
  const AchievementCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.time,
    required this.attachment,
  });

  final String image;
  final String title;
  final String description;
  final String time;
  final String attachment;

  @override
  State<AchievementCard> createState() => _AchievementCardState();
}

class _AchievementCardState extends State<AchievementCard> {

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        width: 300,
        height: 360,
        decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: MyColors.black12
            ),
            boxShadow: [
              BoxShadow(
                color: isHovered == true ? MyColors.purple.withOpacity(0.5) : MyColors.black12,
                blurRadius: 5,
              )
            ]
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21, left: 21, right: 21, bottom: 19),
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
                          color: MyColors.white01,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(widget.image, fit: BoxFit.cover,),
                      ),
                      const SizedBox(height: 17,),
                      Text(widget.title,
                        style: boldTextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8,),
                      Text(widget.description,
                        style: regularTextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(widget.time,
                    style: regularTextStyle(
                      fontSize: 15,
                      color: MyColors.black45,
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
                    Transform.rotate(
                      angle: - 90 * math.pi / 180,
                      child: IconButton(
                        onPressed: (){
                          js.context.callMethod('open', [widget.attachment]);
                        },
                        icon: const Icon(
                          Icons.link_outlined,
                          size: 22,
                          color: MyColors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

