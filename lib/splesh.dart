import 'dart:async';

import 'package:example/homeppp.dart';
import 'package:flutter/material.dart';
class sss extends StatefulWidget {
  const sss({Key? key}) : super(key: key);

  @override
  _sssState createState() => _sssState();
}

class _sssState extends State<sss> {
  void initState () {

    super.initState();

    Timer (Duration (seconds: 5),

            ()=>Navigator.pushReplacement (context, MaterialPageRoute (builder: (context) => HomePage()

        ) // MaterialPageRoute

        )

    ); // Timer

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Image.asset('assets/m.jpg',
      height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
