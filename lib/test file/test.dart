import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InteractiveViewer Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('InteractiveViewer Example'),
        ),
        body: InteractiveViewer(
            boundaryMargin: EdgeInsets.all(double.infinity),
            minScale: 0.1,
            maxScale: 10.0,
            child: HtmlWidget(
              """
              <div style='width: 500px; height: 800px; background-color: lightblue;'>
                <p>This is a sample HTML content</p>
                <ul>
                  <li>Item 1</li>
                  <li>Item 2</li>
                  <li>Item 3</li>
                </ul>
              </div>
              """,
            ),
          ),

      ),
    );
  }
}
