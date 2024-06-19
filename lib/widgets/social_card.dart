import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';
import "dart:js" as js;

class SocialCard extends StatefulWidget {
  const SocialCard({
    super.key,
    required this.image,
    required this.link,
    required this.size,
    required this.rightPadding,
  });

  final String image;
  final String link;
  final double size;
  final double rightPadding;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {

  Color shadowColor = MyColors.black12;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: widget.rightPadding),
      child: InkWell(
        onTap: () {
          js.context.callMethod('open', [widget.link]);
        },
        child: Container(
          width: widget.size,
          height: widget.size,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: 4,
              ),
            ],
          ),
          child: MouseRegion(
            onEnter: (PointerEvent details) {
              setState(() {
                shadowColor = shadowColor == MyColors.black12 ? MyColors.purple : MyColors.black12;
              });
            },
            onExit: (PointerEvent details) {
              setState(() {
                shadowColor = shadowColor == MyColors.black12 ? MyColors.purple : MyColors.black12;
              });
            },
            child: Image.asset(widget.image),
          ),
        ),
      ),
    );
  }
}