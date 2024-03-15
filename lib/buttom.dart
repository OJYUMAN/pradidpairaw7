import 'package:flutter/material.dart';
import 'variable.dart';



class BottomSlider extends StatefulWidget {
  @override
  _BottomSliderState createState() => _BottomSliderState();
}


class _BottomSliderState extends State<BottomSlider> {
  double _currentSliderValue = 0;
  String newSliderValue = "";


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey, // Adjust the color as needed
      padding: EdgeInsets.all(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("$newSliderValue %"),
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
                newSliderValue = _currentSliderValue.toInt().toString();
                scale = value/100;
                print(scale);

              });
            },
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                scale += 0.1; // Increase scale by 0.1
              });
            },
            child: Icon(Icons.zoom_in),
          ),
          SizedBox(width: 59,)
        ],
      ),
    );
  }
}