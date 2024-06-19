import 'package:flutter/material.dart';
import '../styles/mycolors.dart';
import '../styles/textstyles.dart';

class WebEducationCard extends StatelessWidget {
  const WebEducationCard({
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
            style: boldTextStyle(),
          ),
          const SizedBox(height: 5,),
          Container(
            color: MyColors.whiteYear,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
              child: Text(year,
                style: regularItalicTextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(school,
            style: regularItalicTextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15.0,),
          Text(description,
            style: regularTextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class MobileEducationCard extends StatelessWidget {
  const MobileEducationCard({
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
      padding: EdgeInsets.only(left: 12.0,bottom: isLast == true ? 0.0 : 40.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(degree,
            style: boldTextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5,),
          Container(
            color: MyColors.whiteYear,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
              child: Text(year,
                style: regularItalicTextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text(school,
            style: regularItalicTextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 15.0,),
          Text(description,
            style: regularTextStyle(
              fontSize: 17
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

