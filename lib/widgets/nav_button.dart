import 'package:flutter/material.dart';
import '../styles/textstyles.dart';
import '../styles/mycolors.dart';

class NavButton extends StatefulWidget {
  const NavButton({
    super.key,
    required this.toolTipWidth,
    required this.toolTip,
    required this.icon,
    required this.isSelected,
  });

  final double toolTipWidth;
  final String toolTip;
  final IconData icon;
  final bool isSelected;

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {

  double _width = 56;
  bool _isHover = false;
  Color _backColor = MyColors.white01;
  Color _iconColor = MyColors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: MouseRegion(
          onEnter: (event) {
            setState(() {
              _width = _width == 56 ? widget.toolTipWidth : 56;
              _isHover = true;
              _backColor = MyColors.purple;
              _iconColor = MyColors.white;
            });
          },
          onExit: (event) {
            setState(() {
              _width = _width == 56 ? widget.toolTipWidth : 56;
              _isHover = false;
              _backColor = MyColors.white01;
              _iconColor = MyColors.black;
            });
          },
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: _width,
                height: 56,
                decoration: BoxDecoration(
                  color: widget.isSelected ? MyColors.purple : _backColor,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: _isHover == true ? Padding(
                  padding: const EdgeInsets.only(left: 56,top: 16,bottom: 19, right: 12),
                  child: Text(widget.toolTip,
                    style: regularTextStyle(
                      fontSize: 18,
                      color: _iconColor,
                    ),
                  ),
                ) : null,
              ),
              SizedBox(
                height: 56,
                  width: 56,
                  child: Icon(
                    widget.icon,
                    size: 25,
                    color: widget.isSelected ? MyColors.white : _iconColor,
                  ),
              ),
            ],
          ),
        ),
    );
  }
}


