import 'package:flutter/material.dart';

const  TextStyle uberBold =  TextStyle(
  fontFamily: 'UberMove-Bold',
  color: Color(0xFF222222),
  fontSize: 20,
  height: 1.2,
);

const TextStyle unitedArabEmiStyle = TextStyle(
  fontFamily: 'AppleColorEmoji',
  color: Color(0xFF909090),
  fontSize: 12,
  height: 1.17,
);

const TextStyle uberMedium = TextStyle(
  fontFamily: 'UberMove-Medium',
  color: Color(0xFF767676),
  fontSize: 12,
  height: 1.17,
);

const TextStyle subheadStyle = TextStyle(
  fontFamily: 'UberMove-Medium',
  color: Color(0xFF080808),
  fontSize: 16,
  height: 1.19,
);


ButtonStyle btnstyle(isActive,double bradius) => ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(bradius),
  ),
  backgroundColor: isActive ? Colors.black :const Color(0xFFEEEEEE),
  padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
);

 // ignore: non_constant_identifier_names
 BtntextStyle(isActive, double fontsize ,) => TextStyle(
  color: isActive ? Colors.white : Colors.black,
  fontFamily: 'UberMove-Medium',
  fontSize: fontsize,
  height: 1.17,
);
