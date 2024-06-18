import 'package:flutter/material.dart';

class MessageMeButton extends StatelessWidget {
  const MessageMeButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25,right: 25),
            child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFF8E05C2),
                    child: const Icon(
                      Icons.message,
                      color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}