import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/pallets.dart';

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
          style: subheadStyle,
        ),
        OutlinedButton(
          onPressed: () {
            // Add your onPressed function here
          },
          style: OutlinedButton.styleFrom(
            backgroundColor:const Color(0xFFEEEEEE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18), // set corners radius
            ),
            side:const BorderSide(
              color: Color(0xFFEEEEEE), // set border color
            ),
          ),
          child:const SizedBox(
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
