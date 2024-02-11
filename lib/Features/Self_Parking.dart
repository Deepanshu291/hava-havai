import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/Svg.dart';
import 'package:marvelapp/Widgets/Buttons/NavbarBtn.dart';
import 'package:marvelapp/Widgets/Lists/listTile.dart';

class SelfParking extends StatefulWidget {
  const SelfParking({super.key});

  @override
  State<SelfParking> createState() => _SelfParkingState();
}

class _SelfParkingState extends State<SelfParking> {
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
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomListTile(
          svgPath: SvgPath.twoWheeler,
          title: "Two Wheeler",
          subtile: "AED 50 / day",
          subIcon: Icons.error_outline,
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomListTile(
          svgPath: SvgPath.car,
          title: "Car Parking",
          subtile: "AED 100 / day",
          subIcon: Icons.error_outline,
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomListTile(
          svgPath: SvgPath.electricCar,
          title: "Electric Car",
          subtile: "AED 100 / day",
          subIcon: Icons.error_outline,
        )
      ],
    );
  }
}
