import 'package:flutter/material.dart';

class ThumbBtn extends StatelessWidget {
  final IconData icon;
  final String text;
  const ThumbBtn({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Add your onPressed functionality here
      },
      icon: Icon(icon, color: Colors.blue.shade700),
      label: Text(
        text,
        style:const TextStyle(
          fontFamily: 'UberMove-Medium',
          color: Color(0xFF080808),
          fontSize: 14,
          height: 1.21,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        padding:const EdgeInsets.symmetric(horizontal: 20), // Remove padding
        elevation: 0, // Remove elevation
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Remove border radius
        ),
        side: BorderSide.none, // Remove border
      ),
      // style: ElevatedButton.styleFrom(
      //   primary:
      //       Colors.blue, // Change the button color as needed
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(
      //         8), // Adjust the button's corner radius
      //   ),
      // ),
    );
  }
}
