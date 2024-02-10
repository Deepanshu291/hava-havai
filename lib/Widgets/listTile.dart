import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/pallets.dart';

class listTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtile;
  final IconData subIcon;
  final bool? pb;
  const listTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtile,
      required this.subIcon,
      this.pb = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: pb!
                  ? dubaiStyle.copyWith(
                      color: Color(0xFF080808),
                      fontSize: 17,
                      height: 1.19,
                    )
                  : dubaiStyle.copyWith(fontSize: 14),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subtile,
              style: pb!
                  ? dubaiStyle
                  : dubaiStyle.copyWith(
                      color: Color(0xFF080808),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: pb! ? 20 : 0,
            ),
            Icon(
              subIcon,
              size: pb! ? 16 : 11,
              weight: pb! ? 12 : 15,
            )
          ],
        )
      ],
    );
  }
}
