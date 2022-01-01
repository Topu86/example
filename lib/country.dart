import 'package:flutter/material.dart';
class cccc extends StatefulWidget {
  String? countryName;
  String? flag;
  String? currency;
  String? population;
  String? capital;

  @override
  _ccccState createState() => _ccccState();

  cccc({
    this.countryName,
    this.flag,
    this.currency,
    this.population,
    this.capital,
  });
}

class _ccccState extends State<cccc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.countryName}'),),
      body: Column(
        children: [
          Text('Country :${widget.countryName}'),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
