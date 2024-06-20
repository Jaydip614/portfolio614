import 'package:flutter/material.dart';
import '../styles/textstyles.dart';
import '../constants/projects_data.dart';
import '../styles/mycolors.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';
import 'dart:js' as js;

class WebProjects extends StatelessWidget {
  const WebProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: Column(
          children: [
            const PageTitle(title: 'PROJECTS', isMobile: false,),
            PageSubTitle(subTitle: subTitle, isMobile: false,),
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
                    webLink: projects[i]['webLink'],
                    githubLink: projects[i]['githubLink'],
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
                      webLink: projects[i]['webLink'],
                      githubLink: projects[i]['githubLink'],
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

class ProjectCard extends StatefulWidget {

  final String image;

  const ProjectCard({super.key,
    required this.image,
    required this.description,
    required this.tools,
    required this.projectName,
    required this.projectType,
    required this.isGithubLink,
    required this.isWebLink,
    required this.webLink,
    required this.githubLink,
    });

  final String projectName;
  final String projectType;
  final bool isGithubLink;
  final bool isWebLink;
  final String description;
  final List<String> tools;
  final String webLink;
  final String githubLink;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Stack(
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (event) {
                setState(() {
                  isHovered = false;
                });
              },
              child: Container(
                  width: 500,
                  height: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColors.white01,
                    boxShadow: [
                      BoxShadow(
                        color: isHovered == true ? MyColors.purple.withOpacity(0.5) : MyColors.black12,
                        blurRadius: 7,
                        offset: const Offset(0, 5),
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
                              image: widget.image,
                              projectName: widget.projectName,
                              projectType: widget.projectType,
                              isGithubLink: widget.isGithubLink,
                              isWebLink: widget.isWebLink,
                              webLink: widget.webLink,
                              githubLink: widget.githubLink,
                            ),
                            const SizedBox(height: 25,),
                            Text(widget.description,
                              style: regularTextStyle(
                                fontSize: 17,
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
                                for(int i=0; i<widget.tools.length; i++)
                                  CustomBox(toolName: widget.tools[i]),
                              ],
                            ),
                            // FilledButton(
                            //   onPressed: (){},
                            //   style: FilledButton.styleFrom(
                            //       backgroundColor: MyColors.purple,
                            //       shape: RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.circular(5)
                            //       )
                            //   ),
                            //   child: Padding(
                            //     padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                            //     child: Text('View',
                            //       style: regularTextStyle(
                            //         fontSize: 17,
                            //         color: MyColors.white,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      ],
                    ),
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
    required this.webLink,
    required this.githubLink,
  });

  final String image;
  final String projectName;
  final String projectType;
  final bool isGithubLink;
  final bool isWebLink;
  final String webLink;
  final String githubLink;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
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
                  style: boldTextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(projectType,
                  style: regularTextStyle(
                    fontSize: 17,
                    color: MyColors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            if(isWebLink == true)
              ProjectLink(image: 'assets/images/web-black-logo.png', link: webLink),
            if(isGithubLink == true)
              ProjectLink(image: 'assets/images/github.png', link: githubLink)
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
          color: MyColors.white,
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

class ProjectLink extends StatelessWidget {
  const ProjectLink({
    super.key,
    required this.image,
    required this.link,
  });

  final String image;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () {
          js.context.callMethod('open', [link]);
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: MyColors.white,
            border: Border.all(
                width: 1,
                color: MyColors.black12
            ),
            boxShadow: const [
              BoxShadow(
                color: MyColors.black12,
                blurRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}
