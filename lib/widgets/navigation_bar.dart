import 'package:flutter/material.dart';
import '../constants/navbar_data.dart';
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
            ),
        ],
      ),
    );
  }
}


