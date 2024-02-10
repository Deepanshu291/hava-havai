import 'package:flutter/material.dart';

final TextStyle dubaiAirportDxbStyle = TextStyle(
  fontFamily: 'UberMove-Bold',
  color: Color(0xFF222222),
  fontSize: 20,
  height: 1.2,
);

final TextStyle unitedArabEmiStyle = TextStyle(
  fontFamily: 'AppleColorEmoji',
  color: Color(0xFF909090),
  fontSize: 12,
  height: 1.17,
);

final TextStyle dubaiStyle = TextStyle(
  fontFamily: 'UberMove-Medium',
  color: Color(0xFF767676),
  fontSize: 12,
  height: 1.17,
);


ButtonStyle btnstyle(isActive,double bradius) => ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(bradius),
  ),
  primary: isActive ? Colors.black : Color(0xFFEEEEEE),
  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
);

 BtntextStyle(isActive, double fontsize ,) => TextStyle(
  color: isActive ? Colors.white : Colors.black,
  fontFamily: 'UberMove-Medium',
  fontSize: fontsize,
  height: 1.17,
);
