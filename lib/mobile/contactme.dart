import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/widgets/rectangle_button.dart';
import '../constants/contactme_data.dart';
import '../styles/mycolors.dart';
import '../styles/textstyles.dart';
import '../widgets/page_subtitle.dart';
import '../widgets/page_title.dart';

class MobileContactMe extends StatefulWidget {
  const MobileContactMe({super.key});

  @override
  State<MobileContactMe> createState() => _MobileContactMeState();
}

class _MobileContactMeState extends State<MobileContactMe> {

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

  void _showMessage() async {
    setState(() {
      _isError = false;
    });
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

  addDetails(String email, String name, String subject, String message, String time) async {

    if(email == ""){
      print("Enter email");
    }
    else {
      FirebaseFirestore.instance.collection("Contacts").doc(email).set({
        "email" : email,
        "name" : name,
        "subject" : subject,
        "message" : message,
        'time' : time,
      }).then((value) {
        print("Data inserted successfully");
      },);
    }
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
                  color: MyColors.white01,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                          controller: yourName,
                          hintText: 'Your Name',
                          maxLines: 1,
                          ),
                      CustomTextField(
                        controller: yourEmail,
                        hintText: 'Your Email',
                        maxLines: 1,
                      ),
                      CustomTextField(
                        controller: subject,
                        hintText: 'Subject',
                        maxLines: 1,
                      ),
                      CustomTextField(
                        controller: yourMessage,
                        hintText: 'Your Name',
                        maxLines: 8,
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RectangleButton(
                              onPressed: () {
                                if(yourName.text.isNotEmpty && yourEmail.text.isNotEmpty &&
                                    yourMessage.text.isNotEmpty){
                                  addDetails(
                                    yourName.text.toString(),
                                    yourName.text.toString(),
                                    subject.text.toString(),
                                    yourMessage.text.toString(),
                                    DateTime.now().toString(),
                                  );
                                  _showMessage();
                                }
                                else{
                                  _showErrorMessage();
                                }
                              },
                              text: 'SUBMIT',
                              isMobile: false,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(_isSend == true)
                            MessageBox(message: _message, width: 30, height: 27, image: sentIcon),
                          if(_isError == true)
                            MessageBox(message: _message, width: 23, height: 23, image: errorIcon),
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.maxLines,
    required this.controller,
  });

  final String hintText;
  final int maxLines;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
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
