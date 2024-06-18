import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/resume_data.dart';
import 'package:timelines/timelines.dart';

class CustomTimeline extends StatelessWidget {
  const CustomTimeline({super.key,});

  @override
  Widget build(BuildContext context) {
    return Timeline(
      children: [
        for(int i=0; i<educations.length; i++)
        TimelineTile(
          nodePosition: 0.0,
          node: const TimelineNode(
            indicator: OutlinedDotIndicator(
              size: 20,
              color: Color(0xFF8E05C2),
            ),
            indicatorPosition: 0.0,
            endConnector: SolidLineConnector(
              color: Color(0xFF8E05C2),
            ),
          ),
          contents: EducationCard(
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

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
    required this.degree,
    required this.year,
    required this.school,
    required this.description,
    required this.isLast,
  });

  final String degree;
  final String year;
  final String school;
  final String description;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0,bottom: isLast == true ? 0.0 : 50.0, top: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(degree,
            style: const TextStyle(
                fontSize: 21,
                fontFamily: 'SourceSans3-Bold',
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            color: const Color(0xFFE4EDF9),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
              child: Text(year,
                style: const TextStyle(
                    fontSize: 17,
                    fontFamily: 'SourceSans3-Regular',
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(school,
            style: const TextStyle(
                fontSize: 18,
                fontFamily: 'SourceSans3-Regular',
                fontStyle: FontStyle.italic,
                color: Colors.black
            ),
          ),
          const SizedBox(height: 15.0,),
          Text(description,
            style: const TextStyle(
                fontSize: 18,
                fontFamily: 'SourceSans3-Regular',
                color: Colors.black
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}


