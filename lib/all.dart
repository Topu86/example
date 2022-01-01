import 'package:example/country.dart';
import 'package:flutter/material.dart';
class aaa extends StatefulWidget {
  String? continent;

  @override
  _aaaState createState() => _aaaState();

  aaa({this.continent});
}

class _aaaState extends State<aaa> {
  List Country = [
    ['Bangladesh', 'assets/m.jpg', 'taka','16000000','Dhaka'],
    ['Bangladesh', 'assets/m.jpg','taka','16000000','Dhaka'],
    ['Bangladesh', 'assets/m.jpg','taka','16000000','Dhaka'],
    ['Bangladesh', 'assets/m.jpg','taka','16000000','Dhaka'],
    ['Bangladesh', 'assets/m.jpg','taka''16000000','Dhaka'],
    ['Bangladesh', 'assets/m.jpg','taka','16000000','Dhaka'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.continent}'),centerTitle: true,),
    
    body: GridView.builder(gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10
    ),
        itemCount: Country.length,
        itemBuilder: (context,index){
      return InkWell(
        onTap: (){Navigator.push(context,
            MaterialPageRoute(builder: (context)=>cccc(

              countryName:Country[index][0],
              flag:Country[index][1],
              currency:Country[index][2],
              population:Country[index][3],
               capital:Country[index][4]
            )));
        },
        child: Container(

          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Image.asset(Country[index][1]),
              Text(Country[index][0])
            ],
          ),
        ),
      );
    }
    ),
    );
  }
}
