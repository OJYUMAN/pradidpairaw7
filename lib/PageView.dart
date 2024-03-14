import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'PaperManager.dart';

var scale = 1.0;


class PageViewContainer extends StatefulWidget {
  @override
  _FloatingContainerState createState() => _FloatingContainerState();
}

class _FloatingContainerState extends State<PageViewContainer> {
  List<Widget> pagepaper = []; // List to store containers
  double _top = 0.0;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: _top,
          left: MediaQuery.of(context).size.width / 2 -
              420, // Center horizontally
          child: Listener(
            onPointerSignal: (PointerSignalEvent event) {
              if (event is PointerScrollEvent) {
                setState(() {
                  _top -= event.scrollDelta.dy;
                });
              }
            },
            onPointerPanZoomStart: (PointerPanZoomStartEvent event) {
              if (event is PointerPanZoomStartEvent) {
                print("object");
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

