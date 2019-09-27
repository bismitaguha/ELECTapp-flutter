import 'package:flutter/material.dart';
import 'package:elect_app/main.dart';

class CandidatesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CandidatesPageState();
  }
}

class _CandidatesPageState extends State<CandidatesPage> {
  static const String routeName = '/candidates';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Candidates"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Candidates")));
  }
}