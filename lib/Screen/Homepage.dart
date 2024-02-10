import 'package:marvelapp/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Accordion/Accordion.dart';
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
                        'Dubai  .',
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
              height: 320,
              child: Heroframes(),
            ),
            Navbar(),
            Frames(
              heading: "Taxi Service",
              // child: Column(
              //   children: [
              //     TaxiItems()
              //   ],
              // ),
              child: SizedBox(
                height: 150,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 10,
                      childAspectRatio: 16 / 9),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return TaxiItems();
                  },
                ),
              ),
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
                    subIcon: Icons.error_outline,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const listTile(
                    icon: Icons.car_rental,
                    title: "Car Parking",
                    subtile: "AED 100 / day",
                    subIcon: Icons.error_outline,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const listTile(
                    icon: Icons.motorcycle,
                    title: "Two Wheeler",
                    subtile: "AED 50 / day",
                    subIcon: Icons.error_outline,
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
            Frames(heading: "Foreign exhange", child: Accordion()),
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

class TaxiItems extends StatelessWidget {
  const TaxiItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceEvenly, // Adjusted alignment
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Image(
                image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/c/cc/Uber_logo_2018.png"),
                width: 80,
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                "\$ \$ \$ \$",
                style: TextStyle(fontSize: 16), // Adjusted font size
              ),
            )
          ],
        ),
      ),
    );
  }
}


// class TaxiItems extends StatelessWidget {
//   const TaxiItems({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: 2,
//       borderRadius: BorderRadius.circular(10),
//       child: Container(
//         // color: Colors.amber,
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

//         decoration: BoxDecoration(
//             color: Colors.white, borderRadius: BorderRadius.circular(10)),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Image(
//               image: NetworkImage(
//                   "https://upload.wikimedia.org/wikipedia/commons/c/cc/Uber_logo_2018.png"),
//               width: 80,
//             ),
//             Text("\$ \$ \$ \$")
//           ],
//         ),
//       ),
//     );
//   }
// }
