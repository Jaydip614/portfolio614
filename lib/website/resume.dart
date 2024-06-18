import 'package:flutter/material.dart';

class WebResume extends StatefulWidget {
  const WebResume({super.key});

  @override
  State<WebResume> createState() => _WebResumeState();
}

class _WebResumeState extends State<WebResume> {

  bool isView = false;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
          children: [
            const SizedBox(height: 50,),
            const Text("RESUME",
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'SourceSans3-Bold',
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              width: 45,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xFF8E05C2),
              ),
            ),
            const SizedBox(height: 30,),
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
