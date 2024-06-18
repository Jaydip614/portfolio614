import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/resume_data.dart';
import 'package:jaydipbaraiya/widgets/custom_timeline.dart';
import 'dart:js' as js;

class WebResume extends StatelessWidget {
  const WebResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50,),
        const Text("RESUME",
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
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1050,),
            child: Text(resumeSubTitle,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'SourceSans3-Regular',
                color: Colors.black,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        const SizedBox(height: 30,),
        const Padding(
          padding: EdgeInsets.only(left: 100, right: 100),
          child: Wrap(
            runSpacing: 30,
            spacing: 50,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Education",
                    style: TextStyle(
                        fontSize: 27,
                        fontFamily: 'SourceSans3-Bold',
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    height: 500,
                    width: 600,
                    child: CustomTimeline(isMobile: false,),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Professional Experience",
                    style: TextStyle(
                        fontSize: 27,
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
                fontSize: 21,
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
