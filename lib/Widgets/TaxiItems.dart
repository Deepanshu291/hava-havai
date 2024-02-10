import 'package:flutter/material.dart';
import 'package:marvelapp/Utils/utils.dart'; 


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
                "\$\$\$\$",
                style: dubaiStyle
              ),
            )
          ],
        ),
      ),
    );
  }
}
