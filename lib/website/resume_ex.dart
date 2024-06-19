import 'package:flutter/material.dart';
import '../styles/web_page_title.dart';

class WebResume1 extends StatefulWidget {
  const WebResume1({super.key});

  @override
  State<WebResume1> createState() => _WebResume1State();
}

class _WebResume1State extends State<WebResume1> {

  bool isView = false;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
          children: [
            const WebPageTitle(title: 'RESUME'),
            Container(
                // duration: const Duration(milliseconds: 900),
                constraints: BoxConstraints(
                  maxWidth: screenWidth / 1.35,
                ),
                child: Stack(
                    children: [
                      if(isView == true)
                      AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          curve: Curves.easeInOut,
                          height: MediaQuery.of(context).size.height / 1.1,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF1F2F5),
                            borderRadius: BorderRadius.circular(17)
                        ),
                      ),
                      Column(
                        children: [
                          if(isView == false)
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 600),
                                curve: Curves.easeInOut,
                                child: Image.asset('assets/images/resume-top1.png'),
                            )
                          // else
                          //   Image.asset('images/resume-top2.png'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30,top: 30),
                        child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: (){
                                      setState(() {
                                        isView = isView == false ? true : false ;
                                      });
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      overlayColor: const Color(0xFF8E05C2)
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 4,),
                                        Text(isView == false ? "view" : "back",
                                          style: const TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'SourceSans3-Regular',
                                            color: Colors.black,
                                          ),
                                        ),
                                        Icon(isView == false ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                                          size: 25,
                                          color: Colors.black,)
                                      ],
                                    ),
                                ),
                              ],
                        )
                      )
                    ]
                ),
            ),
            const SizedBox(height: 50,)
          ],
    );
  }
}

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  Color _backgroundColor = Colors.white;
  Color _textColor = const Color(0xFF8E05C2);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: (){},
      onHover: (value) {
        setState(() {
          _backgroundColor = _backgroundColor == Colors.white ? const Color(0xFF8E05C2) : Colors.white;
          _textColor = _textColor == const Color(0xFF8E05C2) ? Colors.white : const Color(0xFF8E05C2);
        });
      },
      style: FilledButton.styleFrom(
        // backgroundColor: const Color(0xFF8E05C2),
        backgroundColor: _backgroundColor,
        elevation: 0,
      ),
      child: Text('Download',
        style: TextStyle(
          fontSize: 17,
          fontFamily: 'SourceSans3-Regular',
          color: _textColor,
        ),
      ),
    );
  }
}
