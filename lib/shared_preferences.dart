import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class sshh extends StatefulWidget {
  const sshh({Key? key}) : super(key: key);

  @override
  _sshhState createState() => _sshhState();
}

class _sshhState extends State<sshh> {
  int counter=0;
  Future _increment() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      prefs.setInt('counter', counter);
    });
  }
  Future _decrement() async{
    SharedPreferences prefs =await SharedPreferences.getInstance();
    setState(() {
      counter--;
      prefs.setInt('counter', counter);
    });
  }
  getCounter()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt('counter')??0;
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCounter();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('shere'),centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            Text('$counter',style: TextStyle(fontSize: 50),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(60),
              ),
              child: RaisedButton(
                onPressed: (){

                  _increment();
                },
              child: Text('Increment'),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(60.0)
              ),
              child: RaisedButton(
                onPressed: (){
                  _decrement();},
                child: Text('Decrement'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
