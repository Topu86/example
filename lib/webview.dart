import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class wwww extends StatefulWidget {
  const wwww({Key? key}) : super(key: key);

  @override
  _wwwwState createState() => _wwwwState();
}

class _wwwwState extends State<wwww> {
  WebViewController? _controller;
  Future _goBack()async{
    if(await _controller!.canGoBack()){
      await _controller!.goBack();
    }
  }
  Future _goForword()async{
    if(await _controller!.canGoForward()){
      await _controller!.goForward();}}

    @override
    Widget build(BuildContext context) {
      return SafeArea(child: Scaffold(
        appBar: AppBar(title: Text('webview'),centerTitle: true,
          actions: [
            IconButton(onPressed: _goBack, icon: Icon(Icons.arrow_back)),
            IconButton(onPressed: _goForword, icon: Icon(Icons.arrow_forward)),
          ],),
        body: WebView(
          initialUrl: 'https://pub.dev/',
          javascriptMode: JavascriptMode.unrestricted,
        ),

      ));
    }
  }

