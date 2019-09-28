import 'package:flutter/material.dart';
import 'package:elect_app/main.dart';

class FollowedPostsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FollowedPostsPageState();
  }
}

class _FollowedPostsPageState extends State<FollowedPostsPage> {
  static const String routeName = '/followed_posts';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Followed Posts"),
        ),
        drawer: AppDrawer(),
        body: new ListView(
          children: <Widget>[
            _createFollowedPostItem(
              heading: "Heading",
              text: "Hello, this is some random post with some randomly written text in some utterly shitty random way.",
            )
          ],
        )
        );
  }
}

Widget _createFollowedPostItem({String heading, String text}) {
  return Card(
    elevation: 5.0,
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: new ListTile(
        title: Text(heading, style: TextStyle(fontSize: 18.0),),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        subtitle: new Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 15.0,),
              child: Text(text, style: TextStyle(fontSize: 15.0,),
            ),
            ),
          ],
        ),
          trailing: Icon(Icons.bookmark, color: Colors.yellow, size: 30.0,),
      ),
    ),
  );
}