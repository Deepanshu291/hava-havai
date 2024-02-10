import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/pallets.dart';

class NavbarButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;
  final bool? navbtn;

  const NavbarButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onPressed,
    this.navbtn = true
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: btnstyle(
          isActive,navbtn!?18:8
        ),
        child: Text(
          text,
          style: BtntextStyle(isActive, navbtn!?12:16),
        ),
      ),
    );
  }
}
