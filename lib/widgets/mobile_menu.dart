import 'package:flutter/material.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({
    super.key,
    this.onMenuTap});

  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: onMenuTap,
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              // backgroundColor: const Color(0xFFF2F3F5),
            ),
            icon: const Icon(Icons.menu_rounded, size: 30,),
          )
        ],
      ),
    );
  }
}
