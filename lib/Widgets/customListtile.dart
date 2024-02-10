import 'package:flutter/material.dart';

class CustomListile extends StatelessWidget {
  final String label;
  const CustomListile({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'UberMove-Medium',
            color: Color(0xFF080808),
            fontSize: 16,
            height: 1.19,
          ),
        ),
        OutlinedButton(
          onPressed: () {
            // Add your onPressed function here
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0xFFEEEEEE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18), // set corners radius
            ),
            side: BorderSide(
              color: Color(0xFFEEEEEE), // set border color
            ),
          ),
          child: SizedBox(
            height: 36, // set height
            width: 20,
            child: Center(
              child: Icon(
                Icons.phone, // Icon
                color: Colors.black, // Icon color
              ),
            ),
          ),
        )
      ],
    );
  }
}
