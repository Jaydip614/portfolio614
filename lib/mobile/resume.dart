import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/resume_data.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import 'package:jaydipbaraiya/widgets/custom_timeline.dart';
import '../widgets/page_title.dart';
import 'dart:js' as js;

import '../widgets/rectangle_button.dart';

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
              style: regularTextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Wrap(
            runSpacing: 20,
            spacing: 30,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Education",
                    style: boldTextStyle(
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const SizedBox(
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
                    style: boldTextStyle(
                      fontSize: 21,
                    ),
                  ),
                  const SizedBox(height: 15,),
                  SizedBox(
                    width: 400,
                    child: Text("Looking for opportunity...",
                      style: regularTextStyle(
                        fontSize: 18,
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
        RectangleButton(
          onPressed: (){
            js.context.callMethod('open', [resumeLink]);
          },
          text: "Download",
          isMobile: true,
        ),
        const SizedBox(height: 75,),
      ],
    );
  }
}
