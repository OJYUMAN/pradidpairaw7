import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HtmlWidgetApp extends StatefulWidget {
  @override
  _HtmlWidgetAppState createState() => _HtmlWidgetAppState();
}

class _HtmlWidgetAppState extends State<HtmlWidgetApp> {
  @override
  void initState() {
    super.initState();
    // Enable WebView for the app
    WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTML Widget App'),
        ),
        body: ListView(
          children: [
            // WebView Widget
            Container(
              height: 300, // Adjust the height as needed
              child: WebView(
                initialUrl: 'https://www.example.com', // Initial URL to load
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            // HTML Widget
            HtmlWidget(
              // HTML content to render
              '<h1>Hello, World!</h1><p>This is some HTML content.</p>',
              textStyle: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(HtmlWidgetApp());
}
