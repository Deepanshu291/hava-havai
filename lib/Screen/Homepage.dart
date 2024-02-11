import 'package:marvelapp/Features/Bottom_button.dart';
import 'package:marvelapp/Features/Contact_airport.dart';
import 'package:marvelapp/Features/Herocontainer.dart';
import 'package:marvelapp/Features/Public_transport.dart';
import 'package:marvelapp/Features/Self_Parking.dart';
import 'package:marvelapp/Features/Taxi_Service.dart';
import 'package:marvelapp/Features/Terminal_map.dart';
import 'package:marvelapp/Utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Accordion/Accordion.dart';
import 'package:marvelapp/Features/Navbar.dart';
import 'package:marvelapp/Widgets/customContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dubai Airport-DXB",
                    style: uberBold,
                  ),
                  Row(
                    children: [
                      Text(
                        'Dubai  .',
                        style: uberMedium,
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

            
           const SizedBox(
              width: 350,
              height: 320,
              child: Heroframes(),
            ),

            const Navbar(),

            const CustomContainer(
              heading: "Taxi Service",
              child: TaxiService()
            ),

            const CustomContainer(
              heading: "Public transport",
              child: PublicTransport(),
            ),

            const CustomContainer(
              heading: "Self parking",
              child: SelfParking()
            ),
            const CustomContainer(
                heading: "Terminal map",
                child: TerminalMap()),
            CustomContainer(heading: "Foreign exhange", child: Accordion()),
            const CustomContainer(
              heading: "Contact airport",
              child: ContactAirport(),
            ),
            const BottomButtons()
          ],
        ),
      ),
    );
  }
}








