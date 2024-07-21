import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/mobile/aboutme.dart';
import 'package:jaydipbaraiya/mobile/achievements.dart';
import 'package:jaydipbaraiya/mobile/contactme.dart';
import 'package:jaydipbaraiya/mobile/home.dart';
import 'package:jaydipbaraiya/mobile/projects.dart';
import 'package:jaydipbaraiya/mobile/resume.dart';
import 'package:jaydipbaraiya/mobile/skillstack.dart';
import 'package:jaydipbaraiya/website/aboutme.dart';
import 'package:jaydipbaraiya/website/achievements.dart';
import 'package:jaydipbaraiya/website/contactme.dart';
import 'package:jaydipbaraiya/website/footer.dart';
import 'package:jaydipbaraiya/website/projects.dart';
import 'package:jaydipbaraiya/website/resume.dart';
import 'package:jaydipbaraiya/website/skillstack.dart';
import 'package:jaydipbaraiya/website/home.dart';
import 'package:jaydipbaraiya/widgets/custom_drawer.dart';
import 'package:jaydipbaraiya/widgets/message_button.dart';
import 'package:jaydipbaraiya/widgets/mobile_menu.dart';
import 'package:jaydipbaraiya/widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(7, (index) => GlobalKey(),);

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          drawer: CustomDrawer(
            onNavItemTap: (int navIndex) {
              scaffoldKey.currentState?.closeDrawer();
              scrollToSection(navIndex);
          },
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [

                    SizedBox(key: navBarKeys.first,),

                    if(constraints.maxWidth >= 1000.0)
                      WebHomeScreen(
                        onButtonTap: (int navIndex){
                          scrollToSection(navIndex);
                        },
                      )
                    else
                      MobileHomeScreen(
                        onButtonTap: (int navIndex){
                          scrollToSection(navIndex);
                        },
                      ),

                    if(constraints.maxWidth >= 1000.0)
                      WebAboutMe(key: navBarKeys[1],)
                    else
                      MobileAboutMe(key: navBarKeys[1],),

                    if(constraints.maxWidth >= 1000.0)
                      WebSkillStack(key: navBarKeys[2],)
                    else
                      MobileSkillStack(key: navBarKeys[2],),

                    if(constraints.maxWidth >= 1000.0)
                      WebResume(key: navBarKeys[3],)
                    else
                      MobileResume(key: navBarKeys[3],),

                    if(constraints.maxWidth >= 1000.0)
                      WebProjects(key: navBarKeys[4],)
                    else
                      MobileProjects(key: navBarKeys[4],),

                    if(constraints.maxWidth >= 1000.0)
                      WebAchievements(key: navBarKeys[5],)
                    else
                      MobileAchievements(key: navBarKeys[5],),

                    if(constraints.maxWidth >= 950.0)
                      WebContactMe(key: navBarKeys[6],)
                    else
                      MobileContactMe(key: navBarKeys[6],),

                    const Footer(),
                  ],
                ),
              ),
              if(constraints.maxWidth >= 1000.0)
              WebNavigationBar(
                onNavItemTap: (int navIndex){
                  scrollToSection(navIndex);
              },
              )
              else
                MobileMenu(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                ),
              MessageMeButton(
                onPressed: () {
                  scrollToSection(0);
                },
              ),
              // const UiUxPortfolio(),
            ],
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex){

    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }
}

