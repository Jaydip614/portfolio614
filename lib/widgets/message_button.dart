import 'package:flutter/material.dart';
import '../styles/mycolors.dart';

class MessageMeButton extends StatelessWidget {
  const MessageMeButton({super.key, required this.onPressed,});

  final VoidCallback onPressed;

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
            child: SizedBox(
              height: 45,
              width: 45,
              child: FloatingActionButton(
                      onPressed: onPressed,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: MyColors.purple,
                      child: const Icon(
                        Icons.arrow_upward_rounded,
                        color: MyColors.white,
                        size: 20,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}