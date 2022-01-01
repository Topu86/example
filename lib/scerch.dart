import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class sese extends StatefulWidget {
  const sese({Key? key}) : super(key: key);

  @override
  _seseState createState() => _seseState();
}

class _seseState extends State<sese> {
  List<String>student =["topu",
  "shdgfjh",
    "hfhhfh",
    "fhjhjkh",
    "ighghg",
      "Fjkjafjf",
    "topu",
    "shdgfjh",
    "hfhhfh",
    "fhjhjkh",
    "ighghg",
    "Fjkjafjf",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
          title:Text("ListView.builder"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(

            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search......',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 1)
              ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 1)
                )
            ),
            onChanged: (String searchElement){
              setState(() {
                student=student.where((element) => (
                element.toLowerCase().contains(searchElement.toLowerCase())
                )).toList();
              });
            },
          ),
          Expanded(
            child: Container(
              child:  ListView.builder(
                  itemCount: student.length,
                  itemBuilder: (BuildContext context,int index){
                    return ListTile(
                        leading: Icon(Icons.list),
                        trailing: Icon(Icons.arrow_forward,
                         ),
                        title:Text(student[index]),
                      subtitle: Text('${student[index]}Iam good student'),
                    );
                  }
              ),
            ),
          )
        ],
      ),
    )
    );
  }
}
