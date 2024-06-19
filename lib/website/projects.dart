import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/projects_data.dart';
import '../styles/web_page_title.dart';

class WebProjects extends StatelessWidget {
  const WebProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          children: [
            const WebPageTitle(title: 'PROJECTS'),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700,),
              child: const Text('I have worked with different projects and I am displaying some of them here.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SourceSans3-Regular',
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: Wrap(
                spacing: 25,
                runSpacing: 50,
                children: [
                  for(int i=0; i<2; i++)
                  ProjectCard(
                    image: projects[i]['image'],
                    projectName: projects[i]['projectName'],
                    projectType: projects[i]['projectType'],
                    isGithubLink: projects[i]['isGithubLink'],
                    isWebLink: projects[i]['isWebLink'],
                    description: projects[i]['description'],
                    tools: projects[i]['tools'],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.only(left: 100, right: 100),
              child: Wrap(
                spacing: 25,
                runSpacing: 50,
                children: [
                  for(int i=2; i<4; i++)
                    ProjectCard(
                      image: projects[i]['image'],
                      projectName: projects[i]['projectName'],
                      projectType: projects[i]['projectType'],
                      isGithubLink: projects[i]['isGithubLink'],
                      isWebLink: projects[i]['isWebLink'],
                      description: projects[i]['description'],
                      tools: projects[i]['tools'],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 75,),
          ],
        ),
    );
  }
}

class ProjectCard extends StatelessWidget {

  final String image;

  const ProjectCard({super.key,
    required this.image,
    required this.description,
    required this.tools,
    required this.projectName,
    required this.projectType,
    required this.isGithubLink,
    required this.isWebLink,
    });

  final String projectName;
  final String projectType;
  final bool isGithubLink;
  final bool isWebLink;
  final String description;
  final List<String> tools;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
          children: [
            Container(
                width: 500,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFF1F2F5),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF8E05C2).withOpacity(0.1),
                      blurRadius: 5,
                      offset: const Offset(2, 4),
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TopSection(
                            image: image,
                            projectName: projectName,
                            projectType: projectType,
                            isGithubLink: isGithubLink,
                            isWebLink: isWebLink,
                          ),
                          const SizedBox(height: 25,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: [
                              for(int i=0; i<tools.length; i++)
                                CustomBox(toolName: tools[i]),
                            ],
                          ),
                          // FilledButton(
                          //   onPressed: (){},
                          //   style: FilledButton.styleFrom(
                          //       backgroundColor: const Color(0xFF8E05C2),
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(5)
                          //       )
                          //   ),
                          //   child: const Padding(
                          //     padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                          //     child: Text('View',
                          //       style: TextStyle(
                          //         fontSize: 17,
                          //         fontFamily: 'SourceSans3-Regular',
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
            ),
          ],
        ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.image,
    required this.projectName,
    required this.projectType,
    required this.isGithubLink,
    required this.isWebLink,
  });

  final String image;
  final String projectName;
  final String projectType;
  final bool isGithubLink;
  final bool isWebLink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width : 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(projectName,
                  style: const TextStyle(
                      fontSize: 25,
                      fontFamily: 'SourceSans3-Bold',
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                Text(projectType,
                  style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'SourceSans3-Regular',
                      color: Colors.black54
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            if(isGithubLink == true)
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('images/github.png',),
              ),
            )
          ],
        )
      ],
    );
  }
}

class CustomBox extends StatelessWidget {

  final String toolName;

  const CustomBox({
    super.key,
    required this.toolName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 7,bottom: 7, left: 15,right: 15),
        child: Text(toolName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: 'SourceSans3-Regular',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}