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
  double scale = 1.0;


  @override
  Widget build(BuildContext context) {
    if(left == 0.0){// If the paper is close to the edge Rearrange it to center.
      left = MediaQuery.of(context).size.width / 2 -420;
    }
    return Stack(
      children: [
        Positioned(
          top: top,
          left: left,
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
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    PaperManager.addPaper(pagepaper);
                  });
                },
                child: Icon(Icons.add),
              ),
              SizedBox(width: 8), // Spacer
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    scale -= 0.1; // Increase scale by 0.1
                  });
                },
                child: Icon(Icons.zoom_out),
              ),
              SizedBox(width: 8), // Spacer
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    scale += 0.1; // Increase scale by 0.1
                  });
                },
                child: Icon(Icons.zoom_in),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
