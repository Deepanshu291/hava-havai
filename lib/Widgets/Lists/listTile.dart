import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvelapp/Utils/pallets.dart';

class CustomListTile extends StatelessWidget {
  // final IconData icon;
  final String svgPath;
  final String title;
  final String subtile;
  final IconData subIcon;
  final bool? pb;
  const CustomListTile(
      {super.key,
      required this.title,
      required this.subtile,
      required this.subIcon,
      this.pb = false,
      required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(svgPath),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: pb!
                  ? uberMedium.copyWith(
                      color:const Color(0xFF080808),
                      fontSize: 17,
                      height: 1.19,
                    )
                  : uberMedium.copyWith(fontSize: 14),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subtile,
              style: pb!
                  ? uberMedium
                  : uberMedium.copyWith(
                      color:const Color(0xFF080808),
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
