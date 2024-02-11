import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/CustomListTile.dart';

class ContactAirport extends StatelessWidget {
  const ContactAirport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomListile(label: "Phone"),
        Divider(),
        CustomListile(label: "Lost and Found"),
        Divider(),
        CustomListile(label: "Transport"),
        Divider(),
        CustomListile(label: "Head Office"),
      ],
    );
  }
}
