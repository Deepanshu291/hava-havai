import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Buttons/buttons.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: 350,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NavbarButton(
                text: 'Transport',
                isActive: activeIndex == 0,
                onPressed: () {
                  setState(() {
                    activeIndex = 0;
                  });
                },
              ),
              NavbarButton(
                text: 'Terminal',
                isActive: activeIndex == 1,
                onPressed: () {
                  setState(() {
                    activeIndex = 1;
                  });
                },
              ),
              NavbarButton(
                text: 'Forex',
                isActive: activeIndex == 2,
                onPressed: () {
                  setState(() {
                    activeIndex = 2;
                  });
                },
              ),
              NavbarButton(
                text: 'Contact Info',
                isActive: activeIndex == 3,
                onPressed: () {
                  setState(() {
                    activeIndex = 3;
                  });
                },
              ),
              NavbarButton(
                text: 'Call',
                isActive: activeIndex == 4,
                onPressed: () {
                  setState(() {
                    activeIndex = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
