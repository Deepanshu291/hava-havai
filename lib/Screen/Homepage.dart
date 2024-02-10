import 'package:marvelapp/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Herocontainer.dart';
import 'package:marvelapp/Widgets/Navbar.dart';
import 'package:marvelapp/Widgets/customListtile.dart';
import 'package:marvelapp/Widgets/frames.dart';
import 'package:marvelapp/Widgets/Buttons/buttons.dart';
import 'package:marvelapp/Widgets/listTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int SpactiveIndex = 0;
  int TmactiveIndex = 0;
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dubai Airport-DXB",
                    style: dubaiAirportDxbStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        'Dubai  .', // You may adjust the text to match your needs
                        style: dubaiStyle,
                      ),
                      Text(
                        '🇦🇪 United Arab Emirates',
                        style: unitedArabEmiStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 350,
              height: 320, // Set the height of Heroframes
              child: Heroframes(), // Wrap Heroframes with SizedBox
            ),
            Navbar(),
            Frames(
              heading: "Taxi Service",
              child: Container(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(color: Colors.amber,);
                  },
                ),
              )
            ),
            const Frames(
              heading: "Public transport",
              child: Column(
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
              ),
            ),
            Frames(
              heading: "Self parking",
              child: Column(
                children: [
                  Row(
                    children: [
                      NavbarButton(
                        text: "T1",
                        navbtn: false,
                        isActive: SpactiveIndex == 0,
                        onPressed: () {
                          setState(() {
                            SpactiveIndex = 0;
                          });
                        },
                      ),
                      NavbarButton(
                        text: "T2",
                        navbtn: false,
                        isActive: SpactiveIndex == 1,
                        onPressed: () {
                          setState(() {
                            SpactiveIndex = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const listTile(
                    icon: Icons.motorcycle,
                    title: "Two Wheeler",
                    subtile: "AED 50 / day",
                    subIcon: Icons.abc,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const listTile(
                    icon: Icons.car_rental,
                    title: "Car Parking",
                    subtile: "AED 100 / day",
                    subIcon: Icons.abc,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const listTile(
                    icon: Icons.motorcycle,
                    title: "Two Wheeler",
                    subtile: "AED 50 / day",
                    subIcon: Icons.abc,
                  )
                ],
              ),
            ),
            Frames(
                heading: "Terminal map",
                child: Column(
                  children: [
                    Row(
                      children: [
                        NavbarButton(
                          text: "T1",
                          navbtn: false,
                          isActive: TmactiveIndex == 0,
                          onPressed: () {
                            setState(() {
                              TmactiveIndex = 0;
                            });
                          },
                        ),
                        NavbarButton(
                          text: "T2",
                          navbtn: false,
                          isActive: TmactiveIndex == 1,
                          onPressed: () {
                            setState(() {
                              TmactiveIndex = 1;
                            });
                          },
                        ),
                        NavbarButton(
                          text: "T3",
                          navbtn: false,
                          isActive: TmactiveIndex == 2,
                          onPressed: () {
                            setState(() {
                              TmactiveIndex = 2;
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
                )),
            Frames(heading: "Foreign exhange"),
            const Frames(
              heading: "Contact airport",
              child: Column(
                children: [
                  CustomListile(label: "Phone"),
                  Divider(),
                  CustomListile(label: "Lost and Found"),
                  Divider(),
                  CustomListile(label: "Transport"),
                  Divider(),
                  CustomListile(label: "Head Office"),
                ],
              ),
            ),
            Container(
              // width: 350,
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your onPressed functionality here
                    },
                    icon: const Icon(Icons.turn_right, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      primary: Color(0xFF080808), // Background color
                      padding: EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20), // Button padding
                    ),
                    label: Text(
                      'Get direction', // Button text
                      style: TextStyle(
                        fontFamily: 'UberMove-Medium', // Text font family
                        color: Colors.white, // Text color
                        fontSize: 16, // Text size
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your onPressed functionality here
                    },
                    icon: Icon(Icons.phone, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      primary: Color(0xFF080808), // Background color
                      padding: EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20), // Button padding
                    ),
                    label: Text(
                      'Call airport', // Button text
                      style: TextStyle(
                        fontFamily: 'UberMove-Medium', // Text font family
                        color: Colors.white, // Text color
                        fontSize: 16, // Text size
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
