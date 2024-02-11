import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/pallets.dart'; 

class AccordionItem extends StatelessWidget {
  final String title;
  final String content;
  final int index;
  final int currentIndex;
  final VoidCallback onTap;

  AccordionItem({
    required this.title,
    required this.content,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: subheadStyle.copyWith(fontSize: 16),
          ),
          onTap: onTap,
          trailing: Icon(
            currentIndex == index ? Icons.expand_less : Icons.expand_more,
          ),
        ),
        if (currentIndex == index)
          Text(
            content,
            style: uberMedium,
          ),
      ],
    );
  }
}
