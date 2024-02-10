import 'package:flutter/material.dart';

class Frames extends StatelessWidget {
  final String heading;
  final Widget? child;

  const Frames({Key? key, required this.heading, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xFFE4E4E4),
          width: 1,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontFamily: 'UberMove-Bold',
              color: Color(0xFF080808),
              fontSize: 20,
              height: 1.2,
            ),
          ),
          SizedBox(height: 10),
          if (child != null) SizedBox(height: 10),
          if (child != null) child!,
        ],
      ),
    );
  }
}

// class Frames extends StatelessWidget {
//   const Frames({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 335, // Width in dp converted to logical pixels
//       // height: 234, // Height in dp converted to logical pixels
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: Color(0xFFE4E4E4),
//           width: 1,
//         ),
//       ),
//       // width: double.infinity,
//       // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       // decoration: BoxDecoration(
//       //   border: Border.all(
//       //     color: Color(0xFFE4E4E4),
//       //   ),
//       //   borderRadius: BorderRadius.circular(10),
//       // ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Taxi service', // Text content
//             style: TextStyle(
//               fontFamily: 'UberMove-Bold', // Text font family
//               color: Color(0xFF080808), // Text color
//               fontSize: 20, // Text size
//               height: 1.2, // Line spacing multiplier
//             ),
//           ),

//           Container(
//               height: 200,
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     crossAxisSpacing: 5,
//                     mainAxisSpacing: 8),
//                 itemCount: 4,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     width: 92,
//                     // height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.amber,
//                     ),
//                   );

//                   // GridItem(
//                   //   logoUrl: 'https://via.placeholder.com/150', // Example URL
//                   //   amount: '\$${index * 100}', // Example amount
//                   // );
//                 },
//               )),

//           // Expanded(
//           //   child: GridView.count(
//           //     crossAxisCount: 3,
//           //     children: List.generate(
//           //       6,
//           //       (index) => Text("Uber"),
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

// class GridItem extends StatelessWidget {
//   final String? logoUrl;
//   final String? amount;

//   const GridItem({ this.logoUrl,  this.amount="55555"});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       child: Container(
//         // color: Colors.transparent,
//         width: 92, // Width in dp converted to logical pixels
//         height: 70, // Height in dp converted to logical pixels
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//         ),
//         // margin: EdgeInsets.all(8),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Expanded(
//               child: Image(
//                 width: 58,
//                 height: 20,
//                 image: AssetImage('assets/Bitmap/png/Bitmap.png'),
//                 // logoUrl,
//                 fit: BoxFit
//                     .contain, // Ensure the image fits within the available space
//               ),
//             ),
//             Text(
//               amount!,
//               style: TextStyle(
//                 fontSize: 10,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// class Frames extends StatelessWidget {
//   const Frames({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 100,
//       width: double.infinity,
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       // alignment: Alignment.topLeft,
//       decoration: BoxDecoration(
//           border: Border.all(
//             color: Color(0xFFE4E4E4),
//           ),
//           borderRadius: BorderRadius.circular(10),
//           shape: BoxShape.rectangle),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start, 
//         children: [
//           Text(
//             "Heading",
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'UberMove-Bold'),
//           ),
//            Expanded(
//           child: GridView.count(
//             crossAxisCount: 3,
//             children: List.generate(
//               6,
//               (index) => Text("Uber"),
//             ),
//           ),
//            ),

          
//         ],
//       ),
//     );
//   }
// }
