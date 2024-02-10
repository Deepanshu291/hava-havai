import 'package:flutter/material.dart'; 



class bottomButton extends StatelessWidget {
  const bottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                borderRadius: BorderRadius.circular(10), // Rounded corners
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
                borderRadius: BorderRadius.circular(10), // Rounded corners
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
    );
  }
}
