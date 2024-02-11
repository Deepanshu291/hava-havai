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
        padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            index == 3 ?const LuxuryTag() : const SizedBox(),
            Flexible(
              flex: 2,
              child: Image(
                image: NetworkImage(
                    // "https://upload.wikimedia.org/wikipedia/commons/c/cc/Uber_logo_2018.png"
                    CompanyList[index]),
                width: 80,
              ),
            ),
          const  Flexible(
              flex: 1,
              child: Text("\$\$\$\$\$", style: uberMedium),
            )
          ],
        ),
      ),
    );
  }
}

class LuxuryTag extends StatelessWidget {
  const LuxuryTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 14,
      decoration:const BoxDecoration(
        color: Color(0xFF080808),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
      ),
      child:const Center(
        child: Text(
          'Luxury',
          style: TextStyle(
            fontFamily: 'UberMove-Bold',
            color: Color(0xFFCFA92D), 
            fontSize: 10, 
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
