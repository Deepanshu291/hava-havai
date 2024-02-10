import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/CompanyList.dart';
import 'package:marvelapp/Utils/utils.dart';

class TaxiItems extends StatelessWidget {
  final int index;
  const TaxiItems({
    Key? key,
    required this.index,
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
              MainAxisAlignment.spaceBetween, // Adjusted alignment
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            index == 3 ? luxuryTag() : SizedBox(),
            Flexible(
              flex: 2,
              child: Image(
                image: NetworkImage(
                    // "https://upload.wikimedia.org/wikipedia/commons/c/cc/Uber_logo_2018.png"
                    companyList[index]),
                width: 80,
              ),
            ),
            Flexible(
              flex: 1,
              child: Text("\$\$\$\$\$", style: dubaiStyle),
            )
          ],
        ),
      ),
    );
  }
}

class luxuryTag extends StatelessWidget {
  const luxuryTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 14,
      decoration: BoxDecoration(
        color: Color(0xFF080808), // Set the color
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
      child: Center(
        child: Text(
          'Luxury',
          style: TextStyle(
            fontFamily: 'UberMove-Bold', // Set the font family
            color: Color(0xFFCFA92D), // Set the text color
            fontSize: 10, // Set the font size
            height: 1.2, // Set the line spacing multiplier
          ),
        ),
      ),
    );
  }
}
