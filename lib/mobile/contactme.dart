import 'package:flutter/material.dart';
import '../constants/contactme_data.dart';
import '../styles/page_subtitle.dart';
import '../styles/page_title.dart';

class MobileContactMe extends StatelessWidget {
  const MobileContactMe({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: screenHeight * 1.15,
          child: Image.asset('assets/images/myportfolio_back.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              const PageTitle(title: 'CONTACT', isMobile: true,),
              PageSubTitle(subTitle: subTitle, isMobile: false,),
              const SizedBox(height: 35,),
              Container(
                width: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF2F3F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Your Name',
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Your Email',
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Subject',
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        width: 800,
                        child: TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            hintText: 'Message',
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FilledButton(
                            onPressed: (){},
                            style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xFF8E05C2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                              child: Text('SUBMIT',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'SourceSans3-Bold',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50,)
            ],
          ),
        ),
      ],
    );
  }
}
