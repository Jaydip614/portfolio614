import 'package:flutter/material.dart';

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
            style: const TextStyle(
                fontSize: 18,
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
                    fontSize: 15,
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
                fontSize: 17,
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

