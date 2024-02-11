import 'package:flutter/material.dart'; 
class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 20),
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton.icon(
            onPressed: () {
            },
            icon: const Icon(Icons.turn_right, color: Colors.white),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), 
              ), backgroundColor: const Color(0xFF080808), 
              padding: const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 20), 
            ),
            label: const Text(
              'Get direction', 
              style: TextStyle(
                fontFamily: 'UberMove-Medium', 
                color: Colors.white, 
                fontSize: 16, 
              ),
            ),
          ),
          const  SizedBox(
            width: 10,
          ),


          ElevatedButton.icon(
            onPressed: () {
              // Add your onPressed functionality here
            },
            icon:const Icon(Icons.phone, color: Colors.white),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ), backgroundColor: const Color(0xFF080808), // Background color
              padding:const EdgeInsets.symmetric(
                  vertical: 12, horizontal: 20), // Button padding
            ),
            label:const Text(
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
    );
  }
}
