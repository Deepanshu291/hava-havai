import 'package:flutter/material.dart';
import 'package:marvelapp/Widgets/Accordion/AccordionItem.dart'; 


class Accordion extends StatefulWidget {
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  int _currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AccordionItem(
          title: 'Travelex',
          content:
              'Terminal 3-\nAirside Dept Downtown, Concourse B,\nTerminal 3, beside Winston Smoking room',
          index: 0,
          currentIndex: _currentIndex,
          onTap: () {
            setState(() {
              _currentIndex = _currentIndex == 0 ? -1 : 0;
            });
          },
        ),
        const Divider(),
        AccordionItem(
          title: 'AI Ansari Exchange',
          content:
              'Terminal 3-\nAirside Dept Downtown, Concourse B,\nTerminal 3, beside Winston Smoking room',
          index: 1,
          currentIndex: _currentIndex,
          onTap: () {
            setState(() {
              _currentIndex = _currentIndex == 1 ? -1 : 1;
            });
          },
        ),
        const Divider(),
        AccordionItem(
          title: 'Emirates NBD',
          content:
              'Terminal 3-\nAirside Dept Downtown, Concourse B,\nTerminal 3, beside Winston Smoking room',
          index: 2,
          currentIndex: _currentIndex,
          onTap: () {
            setState(() {
              _currentIndex = _currentIndex == 2 ? -1 : 2;
            });
          },
        ),
      ],
    );
  }
}
