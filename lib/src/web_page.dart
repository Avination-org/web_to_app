import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageView extends StatefulWidget {
  const WebPageView({Key? key}) : super(key: key);

  @override
  _WebPageViewState createState() => _WebPageViewState();
}

class _WebPageViewState extends State<WebPageView> {
  WebViewController? webViewController;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'https://www.google.com',
        javascriptMode: JavascriptMode.unrestricted,
        allowsInlineMediaPlayback: true,
        debuggingEnabled: true,
        userAgent: "",
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
        initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
      ),
    );
  }
}
