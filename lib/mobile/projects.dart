import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import '../constants/projects_data.dart';
import '../styles/mycolors.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';
import 'dart:js' as js;


class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: Column(
        children: [
          const PageTitle(title: 'PROJECTS', isMobile: true,),
          PageSubTitle(subTitle: subTitle, isMobile: false,),
          const SizedBox(height: 35,),
          Column(
            children: [
              for(int i=0; i<4; i++)
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
          const SizedBox(height: 50,),
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
      padding: const EdgeInsets.only(bottom: 30),
      child: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: MouseRegion(
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
                width: 390,
                height: 275,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.white01,
                    boxShadow: [
                      BoxShadow(
                        color: isHovered == true ? MyColors.purple.withOpacity(0.5) : MyColors.black12,
                        blurRadius: 6,
                        offset: const Offset(0, 4),
                      ),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
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
                          const SizedBox(height: 21,),
                          Text(widget.description,
                            style: regularTextStyle(
                              fontSize: 16,
                            ),
                            maxLines: 4,
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              for(int i=0; i<widget.tools.length; i++)
                                CustomBox(toolName: widget.tools[i]),
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
                          //     padding: EdgeInsets.only(top: 7, bottom: 7, left: 5.5, right: 5.5),
                          //     child: Text('View',
                          //       style: TextStyle(
                          //         fontSize: 15,
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
      children: [
        Row(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width : 52,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
            const SizedBox(width: 13,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: (isWebLink == true && isGithubLink == true) ? 150 : 210,
                  child: Text(projectName,
                    style: boldTextStyle(
                      fontSize: 21,
                    ),
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(projectType,
                  style: regularTextStyle(
                    fontSize: 16,
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
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8,bottom: 8, left: 15,right: 15),
        child: Text(toolName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
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
          width: 47,
          height: 47,
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
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(image),
          ),
        ),
      ),
    );
  }
}
