import 'package:example/curvednavigationbarclass.dart';
import 'package:flutter/material.dart';
class hhh extends StatefulWidget {
  const hhh({Key? key}) : super(key: key);

  @override
  _hhhState createState() => _hhhState();
}

class _hhhState extends State<hhh> {
  bool setting=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hidden'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text('Setting'),
                trailing: IconButton(
                  onPressed: (){setState(() {
                    setting=!setting;
                  });},
                  icon: setting==true
                    ?Icon(Icons.arrow_upward)
                      :Icon(Icons.arrow_downward),
                ),
              ),
              Card(
                child: new InkWell(
                  onTap: ()  {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => CurvedNavigstionBarClasss()));
                  },
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
