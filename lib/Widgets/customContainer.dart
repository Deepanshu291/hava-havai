import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String heading;
  final Widget? child;

  const CustomContainer({Key? key, required this.heading, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:const Color(0xFFE4E4E4),
          width: 1,
        ),
      ),
      margin:const EdgeInsets.symmetric(vertical: 10),
      padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style:const TextStyle(
              fontFamily: 'UberMove-Bold',
              color: Color(0xFF080808),
              fontSize: 20,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          if (child != null) const SizedBox(height: 10),
          if (child != null) child!,
        ],
      ),
    );
  }
}
