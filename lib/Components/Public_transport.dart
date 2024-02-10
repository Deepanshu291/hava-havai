import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/listTile.dart'; 


class PublicTransport extends StatelessWidget {
  const PublicTransport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        listTile(
          icon: Icons.bus_alert_sharp,
          title: "Metro",
          subtile: "6am - 10pm",
          subIcon: Icons.arrow_forward_outlined,
          pb: true,
        ),
        SizedBox(
          height: 10,
        ),
        listTile(
          icon: Icons.bus_alert_sharp,
          title: "Bus",
          subtile: "available 24hrs",
          subIcon: Icons.arrow_forward_outlined,
          pb: true,
        ),
      ],
    );
  }
}
