import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/constants/nav_items.dart';
import 'package:jaydipbaraiya/widgets/nav_button.dart';

class WebNavigationBar extends StatefulWidget {
  const WebNavigationBar({
    super.key,
    required this.onNavItemTap,
  });
  final Function(int) onNavItemTap;

  @override
  State<WebNavigationBar> createState() => _WebNavigationBarState();
}

class _WebNavigationBarState extends State<WebNavigationBar> {

  Color buttonColor = const Color(0xFFF2F3F5);
  Color iconColor = Colors.black;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for(int i=0;  i<navIcons.length; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = i;
                });
                widget.onNavItemTap(i);
              },
              child: NavButton(
                  toolTipWidth: toolTipWidths[i],
                  toolTip: navTitles[i],
                  icon: navIcons[i],
                  isSelected: _selectedIndex == i ? true : false,
              ),
            )
            // Container(
            //   margin: const EdgeInsets.only(bottom: 10),
            //   width: 56,
            //   height: 56,
            //   child: IconButton(
            //           onPressed: (){
            //             setState(() {
            //               _selectedIndex = i;
            //             });
            //             widget.onNavItemTap(i);
            //           },
            //           icon: Icon(
            //                 navIcons[i],
            //                 size: 25,
            //                 color: _selectedIndex == i ? Colors.white : iconColor,
            //               ),
            //           style: IconButton.styleFrom(
            //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
            //             backgroundColor: _selectedIndex == i ? const Color(0xFF8E05C2) : buttonColor,
            //             hoverColor: const Color(0xFF8E05C2).withOpacity(0.2),
            //           ),
            //         ),
            // ),
        ],
      ),
    );
  }
}


