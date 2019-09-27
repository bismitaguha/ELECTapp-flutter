import 'package:flutter/material.dart';
import 'package:elect_app/main.dart';

class ComparePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ComparePageState();
  }
}

class _ComparePageState extends State<ComparePage> {
//  static const String routeName = '/compare';
  var _categories = ['Academics', 'Technical', 'Hostel', 'Sports', 'Cultural', 'Professional'];
  var _currentItemSelected = 'Academics';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Compare"),
        ),
        drawer: AppDrawer(),
        body: Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
                children: <Widget>[
                  Text("Comparing", style: TextStyle(fontSize: 20.0),),
                  Padding(padding: EdgeInsets.only(left: 20.0,)),
                  DropdownButton<String>(

                    items: _categories.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem, style: TextStyle(fontSize: 18.0),),
                      );
                    }).toList(),

                    onChanged: (String newValueSelected) {
                      setState(() {
                        this._currentItemSelected = newValueSelected;
                      }
                      );
                    },

                    value: _currentItemSelected,
                  ),
                ]),
          ),
        );
  }
}