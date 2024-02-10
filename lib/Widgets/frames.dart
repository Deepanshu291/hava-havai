import 'package:flutter/material.dart';

class Frames extends StatelessWidget {
  final String heading;
  final Widget? child;

  const Frames({Key? key, required this.heading, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFFE4E4E4),
          width: 1,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontFamily: 'UberMove-Bold',
              color: Color(0xFF080808),
              fontSize: 20,
              height: 1.2,
            ),
          ),
          SizedBox(height: 10),
          if (child != null) SizedBox(height: 10),
          if (child != null) child!,
        ],
      ),
    );
  }
}
