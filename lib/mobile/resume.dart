import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/resume_data.dart';
import 'package:jaydipbaraiya/widgets/custom_timeline.dart';
import '../styles/page_title.dart';
import 'dart:js' as js;

class MobileResume extends StatelessWidget {
  const MobileResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PageTitle(title: 'RESUME', isMobile: true,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1050,),
            child: Text(resumeSubTitle,
              style: const TextStyle(
                fontSize: 17,
                fontFamily: 'SourceSans3-Regular',
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        const SizedBox(height: 30,),
        const Padding(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Wrap(
            runSpacing: 30,
            spacing: 30,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Education",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'SourceSans3-Bold',
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    height: 600,
                    width: 600,
                    child: CustomTimeline(isMobile: true,),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Professional Experience",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'SourceSans3-Bold',
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: 400,
                    child: Text("Looking for opportunity...",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'SourceSans3-Regular',
                          color: Colors.black
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 50,),
        FilledButton(
          onPressed: (){
            js.context.callMethod('open', [resumeLink]);
          },
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFF8E05C2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Text('Download',
              style: TextStyle(
                fontSize: 17,
                fontFamily: 'SourceSans3-Regular',
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 75,),
      ],
    );
  }
}
