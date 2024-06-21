import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/website/contactme.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import 'package:jaydipbaraiya/widgets/received_messages.dart';
import 'package:jaydipbaraiya/widgets/rectangle_button.dart';

class VerifyMe extends StatelessWidget {
  const VerifyMe({super.key});

  @override
  Widget build(BuildContext context) {

    var password = TextEditingController();

    return Scaffold(
      backgroundColor: MyColors.white,
      body: Center(
        child: Container(
          height: 200,
          color: MyColors.white01,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: password,
                  hintText: 'password',
                  obscureText: true,
                  maxLines: 1,
                  width: 250,
                ),
                RectangleButton(
                    onPressed: (){
                      if(password.text == "@Jedy.614") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ReceivedMessages()),
                        );
                      }
                      password.text = '';
                    },
                    text: 'Verify',
                    isMobile: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
