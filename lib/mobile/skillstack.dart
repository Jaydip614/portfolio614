import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import '../constants/skills_data.dart';
import '../widgets/page_title.dart';

class MobileSkillStack extends StatelessWidget {
  const MobileSkillStack({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const PageTitle(title: 'SKILL STACK', isMobile: true,),
        const SizedBox(height: 10,),
        Container(
          width: screenWidth,
          color: MyColors.white01,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 20, top: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Tech Skills
                Text('Technical Skills',
                  style: boldTextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 30,),
                Wrap(
                  runSpacing: 12,
                  children: [
                    for(int i=0; i<techSkills.length; i++)
                      CustomBox(skillName: techSkills[i]),
                  ],
                ),
                const SizedBox(height: 40,),

                //Soft Skills
                Text('Soft Skills',
                  style: boldTextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 30,),
                Wrap(
                  runSpacing: 12,
                  children: [
                    for(int i=0; i<softSkills.length; i++)
                      CustomBox(skillName: softSkills[i])
                  ],
                )
              ],
            ),
          ),
        ),

        const SizedBox(height: 30,),
        //Tools
        Column(
              children: [
                Text('Tools',
                  style: boldTextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  width: 30,
                  height: 3,
                  decoration: BoxDecoration(
                      color: MyColors.purple,
                      borderRadius: BorderRadius.circular(2)
                  ),
                ),
                const SizedBox(height: 30,),
                Wrap(
                  runSpacing: 17,
                    children: [
                      for(int i=0; i<tools.length; i++)
                        CustomCard(
                          image: tools[i]['image'],
                          toolName: tools[i]['toolName'],
                          shadowColor: tools[i]['shadowColor'],
                        ),
                    ],
                  ),
              ],
            ),
        const SizedBox(height: 30,),
      ],
    );
  }
}

class CustomBox extends StatelessWidget {

  final String skillName;

  const CustomBox({super.key, required this.skillName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(7)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10, left: 20,right: 20),
        child: Text(skillName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            fontFamily: 'SourceSans3-Regular',
            color: MyColors.purple,
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {

  final String image;
  final String toolName;
  final Color shadowColor;

  const CustomCard({super.key,
    required this.image,
    required this.toolName,
    required this.shadowColor});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        elevation: 5,
        shadowColor: shadowColor,
        child: Container(
          width: 165,
          height: 200,
          decoration: BoxDecoration(
            // boxShadow: [ BoxShadow( blurRadius: 2, color: themeColor,)],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 90,
                  height: 90,
                  child: Image.asset(image)
              ),
              const SizedBox(height: 23,),
              Text(toolName,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'SourceSans3-Regular',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF555555),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}