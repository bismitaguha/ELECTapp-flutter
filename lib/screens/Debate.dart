mport 'package:flutter/material.dart';
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
                    child: new Inkwell(
                        child: new Text('Sports Debate', style: TextStyle(fontSize: 22.0)),
                        onTap: () => launch('https://www.facebook.com/watchoutiitr/videos/2228255274104373/'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 25.0),
                    child: new Inkwell(
                        child: new Text('Technical Debate', style: TextStyle(fontSize: 22.0)),
                        onTap: () => launch('https://www.facebook.com/watchoutiitr/videos/373814573221147/'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 25.0),
                    child: new Inkwell(
                        child: new Text('Cultural Debate', style: TextStyle(fontSize: 22.0)),
                        onTap: () => launch('https://www.facebook.com/watchoutiitr/videos/422156885254805/'),
                    ),
                  ),
                ]),
          ),
        );
  }
}