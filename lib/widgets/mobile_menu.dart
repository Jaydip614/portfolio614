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
            icon: const Icon(
              Icons.menu_rounded,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
