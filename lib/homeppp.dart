import 'package:example/all.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Continent = [
    ['Asia','assets/m.jpg' ],
    ['Europ','assets/m.jpg'],
    ['Africa','assets/m.jpg'],
    ['North America','assets/m.jpg'],
    ['South America','assets/m.jpg'],
    ['Oceania','assets/m.jpg'],
    ['Antertica','assets/m.jpg']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/m.jpg',
                fit: BoxFit.fill,
              ),

            ),
            toolbarHeight: 100,
            expandedHeight: 300,
            collapsedHeight: 100,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index){
                return GestureDetector(
                  onTap: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>aaa(
                    continent: Continent[index][0],
                      )));},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                        image: DecorationImage(
                            image: AssetImage(Continent[index][0]),
                            fit: BoxFit.fill
                        )
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      Continent[index][0],
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: Continent.length,
            ),
          )
        ],
      ),
    );
  }
}