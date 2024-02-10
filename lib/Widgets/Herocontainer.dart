import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Buttons/buttons.dart';


class Heroframes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350, // Width in dp converted to logical pixels
          height: 300,
          margin: EdgeInsets.only(top: 10),
          // width: double.infinity,
          // height: double.infinity,
          decoration: BoxDecoration(
            // color: Color(0xFF01000F),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1444723121867-7a241cacace9"), 
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Bottom container
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Container(
            width: 315,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize
                  .min, // Ensure the Column takes minimum vertical space
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Thumb(
                        icon: Icons.cloudy_snowing,
                        text: '19 C',
                        subtext: 'Cloudy',
                      ),
                      Thumb(
                        icon: Icons.calendar_month,
                        text: '30 Jan',
                        subtext: 'Mon',
                      ),
                      Thumb(
                        icon: Icons.timer_rounded,
                        text: '8:45 PM',
                        subtext: 'GMT+4',
                      ),
                      Thumb(
                        icon: Icons.wallet,
                        text: 'AED',
                        subtext: '1\$= 3.67AED',
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey,
                      margin: EdgeInsets.symmetric(vertical: 1),
                    ),
                    // Add SizedBox to decrease space between rows
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ThumbBtn(
                          icon: Icons.turn_right,
                          text: "Get direction",
                        ),
                        Container(
                          height: 30,
                          width: 0.5,
                          color: Colors.grey,
                        ),
                        ThumbBtn(
                          icon: Icons.phone,
                          text: "Call airport",
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),

          //
        ),
      ],
    );
  }
}

class Thumb extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subtext;

  Thumb({
    super.key,
    required this.icon,
    required this.text,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'UberMove-Medium',
              color: Color(0xFF080808),
              fontSize: 16,
              height: 1.19,
            ),
          ),
          Text(
            subtext,
            style: TextStyle(
              fontFamily: 'UberMove-Medium',
              color: Color(0xFF909090),
              fontSize: 11,
              height: 1.18,
            ),
          ),
        ],
      ),
    );
  }
}
