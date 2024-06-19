import 'package:flutter/material.dart';

TextStyle textStyleBold({double fontSize = 12, Color color = Colors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Bold',
    fontSize: fontSize,
    color: color,
    // letterSpacing: 1.3
  );
}

TextStyle textStylePrimary({double fontSize = 12, Color color = Colors.black}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Regular',
    fontSize: fontSize,
    color: color,
  );
}

TextStyle textStyleSecondary({double fontSize = 12, Color color = Colors.black54}) {
  return TextStyle(
    fontFamily: 'SourceSans3-Regular',
    fontSize: fontSize,
    color: color,
  );
}