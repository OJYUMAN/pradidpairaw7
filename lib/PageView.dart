import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'PaperManager.dart';

var scale = 1.0;
double top = 0.0;
double left = 0.0;


class PageViewContainer extends StatefulWidget {
  @override
  _FloatingContainerState createState() => _FloatingContainerState();
}

class _FloatingContainerState extends State<PageViewContainer> {
  List<Widget> pagepaper = []; // List to store containers

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: top,
          left: left,
          // left: MediaQuery.of(context).size.width / 2 -
          //     420, // Center horizontally
          child: Listener(
            onPointerSignal: (PointerSignalEvent event) {
              if (event is PointerScrollEvent) {
                setState(() {
                  top -= event.scrollDelta.dy;
                  left -= event.scrollDelta.dx;
                });
              }
            },
            child: Transform.scale(
              scale: scale,
              child: Column(
                children: [
                  ...pagepaper,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          // Add Container Button
          bottom: 16,
          right: 16,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                PaperManager.addPaper(pagepaper);
              });
            },
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

