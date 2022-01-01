import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class caroul extends StatefulWidget {
  const caroul({Key? key}) : super(key: key);

  @override
  _caroulState createState() => _caroulState();
}

class _caroulState extends State<caroul> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: ListView(
        children: [
          CarouselSlider(items: [
            Image.asset('assets/m.jpg'),
            Image.asset('assets/a.jpg'),
            Image.asset('assets/n.jpg'),
            Image.asset('assets/m.jpg'),
            Image.asset('assets/a.jpg'),
            Image.asset('assets/n.jpg'),
            Image.asset('assets/m.jpg'),
            Image.asset('assets/a.jpg'),
            Image.asset('assets/n.jpg'),


          ],
              options: CarouselOptions(
                height: 180,
                enableInfiniteScroll: true,
                autoPlay: true,
                aspectRatio: 16/9,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(microseconds: 12000),
                viewportFraction: .8,
              ))
        ],
      ),
    ));
  }
}
