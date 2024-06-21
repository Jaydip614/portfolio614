import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/textstyles.dart';
import 'package:jaydipbaraiya/widgets/rectangle_button.dart';
import '../constants/contactme_data.dart';
import '../styles/mycolors.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';

class WebContactMe extends StatefulWidget {
  const WebContactMe({super.key});

  @override
  State<WebContactMe> createState() => _WebContactMeState();
}

class _WebContactMeState extends State<WebContactMe> {

  var yourEmail = TextEditingController();
  var yourName = TextEditingController();
  var subject = TextEditingController();
  var yourMessage = TextEditingController();

  String name = '';
  String email = '';
  String message = '';

  bool _isSend = false;
  bool _isError = false;
  String _message = '';

  void _showMessage() {

    setState(() {
      _isError = false;
    });

    senders.add(
      Sender(
        name: yourName.text,
        email: yourEmail.text,
        subject: subject.text,
        message: yourMessage.text,
      ),
    );

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isSend = true;
        _message = 'Your Message Sent Successfully';
        yourName.text = '';
        yourEmail.text = '';
        subject.text = '';
        yourMessage.text = '';
      });
    });

    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _isSend = false;
      });
    });
  }

  void _showErrorMessage(){
    setState(() {
      _isError = true;
      if(yourName.text.isEmpty){
        _message = "Please Enter Your Name";
      }
      else if(yourEmail.text.isEmpty){
        _message = "Please Enter your Email";
      }
      else if(!Sender.isValidGmail(yourEmail.text)){
        _message = "Please Enter Valid Email";
      }
      else if(yourMessage.text.isEmpty){
        _message = "Please Enter Your Message";
      }
    });

  }

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
                      color: MyColors.white01,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomTextField(
                                  controller: yourName,
                                  width: 295,
                                  hintText: 'Your Name',
                                  obscureText: false,
                                  maxLines: 1,
                                ),
                              const SizedBox(width: 30,),
                              CustomTextField(
                                controller: yourEmail,
                                  width: 375,
                                  hintText: 'Your Email',
                                  obscureText: false,
                                  maxLines: 1,
                                ),
                            ],
                          ),
                          CustomTextField(
                            controller: subject,
                              width: 800,
                              hintText: 'Subject',
                              obscureText: false,
                              maxLines: 1,
                            ),
                          CustomTextField(
                            controller: yourMessage,
                              width: 800,
                              hintText: 'Message',
                              obscureText: false,
                              maxLines: 10,
                            ),
                          const SizedBox(height: 15,),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RectangleButton(
                                    onPressed: () {
                                      if(yourName.text.isNotEmpty && yourEmail.text.isNotEmpty &&
                                          yourMessage.text.isNotEmpty && Sender.isValidGmail(yourEmail.text.toString())){
                                        _showMessage();
                                      }
                                      else{
                                        _showErrorMessage();
                                      }
                                    },
                                    text: 'SUBMIT',
                                    isMobile: false,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if(_isSend == true)
                                    MessageBox(message: _message, width: 30, height: 27, image: sentIcon),
                                  if(_isError == true)
                                    MessageBox(message: _message, width: 23, height: 23, image: errorIcon),
                                ],
                              )
                            ],
                          )
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.maxLines,
    required this.width,
    required this.controller,
    required this.obscureText,
  });

  final double width;
  final String hintText;
  final int maxLines;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        width: width,
        child: TextField(
          controller: controller,
          maxLines: maxLines,
          obscureText: obscureText,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            fillColor: MyColors.white,
            hoverColor: MyColors.white,
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
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    required this.message,
    required this.width,
    required this.height,
    required this.image,
  });

  final String message;
  final double width;
  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.elasticInOut,
      decoration: BoxDecoration(
        // color: MyColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 8, bottom: 8),
        child: Row(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Image.asset(image),
            ),
            const SizedBox(width: 10,),
            Text(message,
              style: regularTextStyle(
                fontSize: 16,
              ),),
          ],
        ),
      ),
    );
  }
}

