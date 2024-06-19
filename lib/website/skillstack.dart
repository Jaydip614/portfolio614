import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/skills_data.dart';
import 'package:jaydipbaraiya/styles/web_page_title.dart';

class WebSkillStack extends StatelessWidget {
  const WebSkillStack({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
            children: [
              const WebPageTitle(title: 'SKILL STACK'),
              const SizedBox(height: 10,),
              Container(
                constraints: BoxConstraints(
                  maxWidth: screenWidth / 1.35,
                ),
                decoration: BoxDecoration(
                    color: const Color(0xFFF2F3F5),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 45, top: 35, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
        
                      //Tech Skills
                      const Text('Technical Skills',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SourceSans3-Bold',
                          fontWeight: FontWeight.bold,
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
                      const Text('Soft Skills',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SourceSans3-Bold',
                          fontWeight: FontWeight.bold,
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

              const SizedBox(height: 20,),
        
              //Tools
              Container(
                margin: const EdgeInsets.only(left: 50, right: 35),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text('Tools',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'SourceSans3-Bold',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      const SizedBox(height: 5,),
                     Container(
                          margin: const EdgeInsets.only(left: 5),
                          width: 40,
                          height: 3,
                          decoration: BoxDecoration(
                              color: const Color(0xFF8E05C2),
                              borderRadius: BorderRadius.circular(2)
                          ),
                        ),
                      const SizedBox(height: 30,),
                      Wrap(
                        runSpacing: 15,
                        children: [
                          for(int i=0; i<tools.length; i++)
                          CustomCard(
                            image: tools[i]['image'],
                            toolName: tools[i]['toolName'],
                            shadowColor: tools[i]['shadowColor'],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
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
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10, left: 20,right: 20),
        child: Text(skillName,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              fontFamily: 'SourceSans3-Regular',
              color: Color(0xFF8E05C2),
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
          width: 229,
          height: 270,
          decoration: BoxDecoration(
            // boxShadow: [ BoxShadow( blurRadius: 2, color: themeColor,)],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.asset(image)
              ),
              const SizedBox(height: 20,),
              Text(toolName,
                style: const TextStyle(
                  fontSize: 17,
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