import 'package:flutter/material.dart';
import 'package:elect_app/main.dart';

class ComparePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ComparePageState();
  }
}

class _ComparePageState extends State<ComparePage> {
////  static const String routeName = '/compare';
//  var _categories = ['Academics', 'Technical', 'Hostel', 'Sports', 'Cultural', 'Professional'];
//  var _currentItemSelected = 'Academics';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Debate"),
        ),
        drawer: AppDrawer(),
        body: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 25.0),
                    child: Text('Debate', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 25.0),
                    child: Text('Academic Debate', style: TextStyle(fontSize: 22.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 25.0),
                    child: Text('Sports Debate', style: TextStyle(fontSize: 22.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 25.0),
                    child: Text('Technical Debate', style: TextStyle(fontSize: 22.0),),
                  ),
                ]),
          ),
        );
  }
}