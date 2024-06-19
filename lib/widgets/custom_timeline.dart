import 'package:flutter/material.dart';
import '../constants/resume_data.dart';
import '../styles/mycolors.dart';
import 'package:jaydipbaraiya/widgets/education_card.dart';
import 'package:timelines/timelines.dart';

class CustomTimeline extends StatelessWidget {
  const CustomTimeline({
    super.key,
    required this.isMobile,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Timeline(
      children: [
        for(int i=0; i<educations.length; i++)
        TimelineTile(
          nodePosition: 0.0,
          node: TimelineNode(
            indicator: OutlinedDotIndicator(
              size: isMobile == false ? 20 : 17,
              color: MyColors.purple,
            ),
            indicatorPosition: 0.0,
            endConnector: const SolidLineConnector(
              color: MyColors.purple,
            ),
          ),
          contents: isMobile == false ? WebEducationCard(
            degree: educations[i]['degree'],
            year: educations[i]['year'],
            school: educations[i]['school'],
            description: educations[i]['description'],
            isLast: i == educations.length - 1 ? true : false,
          ) : MobileEducationCard(
            degree: educations[i]['degree'],
            year: educations[i]['year'],
            school: educations[i]['school'],
            description: educations[i]['description'],
            isLast: i == educations.length - 1 ? true : false,
          ),
        ),
      ],
    );
  }
}



