import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/ListsTile/TaxiItems.dart';

class TaxiService extends StatelessWidget {
  const TaxiService({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 12 / 9),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return TaxiItems(
            index: index,
          );
        },
      ),
    );
  }
}
