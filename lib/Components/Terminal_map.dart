import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Buttons/NavbarBtn.dart';

class TerminalMap extends StatefulWidget {
  const TerminalMap({super.key});

  @override
  State<TerminalMap> createState() => _TerminalMapState();
}

class _TerminalMapState extends State<TerminalMap> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            NavbarButton(
              text: "T1",
              navbtn: false,
              isActive: activeIndex == 0,
              onPressed: () {
                setState(() {
                  activeIndex = 0;
                });
              },
            ),
            NavbarButton(
              text: "T2",
              navbtn: false,
              isActive: activeIndex == 1,
              onPressed: () {
                setState(() {
                  activeIndex = 1;
                });
              },
            ),
            NavbarButton(
              text: "T3",
              navbtn: false,
              isActive: activeIndex == 2,
              onPressed: () {
                setState(() {
                  activeIndex = 2;
                });
              },
            )
          ],
        ),
        Container(
          width: 350,
          height: 80,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                image: AssetImage('assets/map/png/map.png'),
              ),
              Positioned(
                  top: 15,
                  left: 120,
                  child: NavbarButton(
                    text: "View",
                    isActive: true,
                    onPressed: () {},
                  ))
            ],
          ),
        )
      ],
    );
  }
}
