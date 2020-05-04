import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 25.0,
          child: Image.asset("images/yt_logo_rgb_dark.png"),
        ),
        backgroundColor: Colors.black87,
        elevation: 0.0,
        actions: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text("0"),
          ),
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.star), onPressed: (){}),
        ],
      ),
      body: Container(),
    );
  }
}
