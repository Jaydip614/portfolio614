import 'package:flutter/material.dart';
import 'package:jaydipbaraiya/styles/mycolors.dart';

TextStyle titleTextStyle({double fontSize = 21, Color color = MyColors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Bold',
    fontSize: fontSize,
    color: color,
    letterSpacing: 1.0,
  );
}
TextStyle boldTextStyle({double fontSize = 21, Color color = MyColors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Bold',
    fontSize: fontSize,
    color: color,
  );
}

TextStyle regularTextStyle({double fontSize = 21, Color color = MyColors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Regular',
    fontSize: fontSize,
    color: color,
  );
}

TextStyle regularItalicTextStyle({double fontSize = 21, Color color = MyColors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Regular',
    fontStyle: FontStyle.italic,
    fontSize: fontSize,
    color: color,
  );
}

TextStyle mediumTextStyle({double fontSize = 21, Color color = MyColors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Medium',
    fontSize: fontSize,
    color: color,
  );
}

TextStyle secondaryTextStyle({double fontSize = 18, Color color = MyColors.black54}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Regular',
    fontSize: fontSize,
    color: color,
  );
}