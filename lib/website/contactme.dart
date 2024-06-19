import 'package:flutter/material.dart';
import '../constants/contactme_data.dart';
import '../styles/page_subtitle.dart';
import '../styles/page_title.dart';

class WebContactMe extends StatelessWidget {
  const WebContactMe({super.key});

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
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
            width: screenWidth,
            child: Column(
              children: [
                const PageTitle(title: 'CONTACT', isMobile: false,),
                PageSubTitle(subTitle: subTitle, isMobile: false,),
                const SizedBox(height: 50,),
                Container(
                    margin: const EdgeInsets.only(left: 75, right: 75),
                    width: 800,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF2F3F5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 295,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Your Name',
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
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
                              const SizedBox(width: 30,),
                              SizedBox(
                                width: 375,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Your Email',
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
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
                            ],
                          ),
                          const SizedBox(height: 30,),
                          SizedBox(
                            width: 800,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Subject',
                                filled: true,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
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
                                contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
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
                          const SizedBox(height: 45,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                const SizedBox(height: 75,)
              ],
            ),
          ),
      ],
    );
  }
}
