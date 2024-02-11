import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/Svg.dart';
import 'package:marvelapp/Widgets/ListsTile/listTile.dart';


class PublicTransport extends StatelessWidget {
  const PublicTransport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomListTile(
          svgPath: SvgPath.metro,
          title: "Metro",
          subtile: "6am - 10pm",
          subIcon: Icons.arrow_forward_outlined,
          pb: true,
        ),
        SizedBox(
          height: 10,
        ),
        CustomListTile(
          svgPath: SvgPath.bus,
          title: "Bus",
          subtile: "available 24hrs",
          subIcon: Icons.arrow_forward_outlined,
          pb: true,
        ),
      ],
    );
  }
}
