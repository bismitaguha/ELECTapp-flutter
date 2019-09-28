import 'package:flutter/material.dart';
import 'package:elect_app/main.dart';
import 'package:flutter/painting.dart';

class CandidatesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CandidatesPageState();
  }
}

class _CandidatesPageState extends State<CandidatesPage> {

  static const String routeName = '/candidates';
  int _selectedIndex = 0;
  final  _widgetOptions = <Widget>[
    _createCandidateAbout(
      name: "Name",
      branch: "MMED",
      year: "2nd Year",
      category: "Academics",
      about: "Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. ",
    ),

    _createCredentials(
      name: "Name",
      branch: "MMED",
      year: "2nd Year",
      category: "Academics",
      about: "Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. ",

    ),
    _createManifestos(
      name: "Name",
      branch: "MMED",
      year: "2nd Year",
      category: "Academics",
      about: "Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. Just some random shit for fun and entertainment because of random shitty stuff. ",

    ),
    ForumPostList(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Candidates"),
        ),
        drawer: AppDrawer(),
        body: new Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
          child: _widgetOptions[_selectedIndex],
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.details, color: Colors.blue,),
            title: Text('About', style: TextStyle(fontSize: 15.0, color: Colors.blue ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list,  color: Colors.blue ),
            title: Text('Credentials', style: TextStyle(fontSize: 15.0, color: Colors.blue ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list, color: Colors.blue ),
            title: Text('Manifestos', style: TextStyle(fontSize: 15.0, color: Colors.blue ),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum, color: Colors.blue ),
            title: Text('Forum', style: TextStyle(fontSize: 15.0, color: Colors.blue ),),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget _createCandidateAbout(
{String name, String branch, String year, String category, String about}) {
  
  return new Container(
    child: new Column(
      children: <Widget>[
//        new Container(
//          width: 120.0,
//          height: 120.0,
////          decoration: new BoxDecoration(
////            shape: BoxShape.circle,
////            image: new DecorationImage(
////              fit: BoxFit.fill,
////              image:
////          ),
////        )
//        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Text(name, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),),
            Padding(
                padding: EdgeInsets.only(top: 3.0),
            child: Text(branch+' | '+year, style: TextStyle(fontSize: 18.0),),),
            Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 18.0),
              child: Text('Candidate | '+category, style: TextStyle(fontSize: 18.0)),
            )
          ],
        ),
        Divider(color: Colors.black, indent: 5.0, endIndent: 5.0, thickness: 0.5, ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 25.0),
                child: Text('About', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 12.0, right: 20.0),
                child: Text(about),
              )
            ],
          ),
        ),

      ],
    ),
  );
}

Widget _createCredentials(
    {String name, String branch, String year, String category, String about}) {
  return new Container(
    child: new Column(
      children: <Widget>[
//        new Container(
//          width: 120.0,
//          height: 120.0,
////          decoration: new BoxDecoration(
////            shape: BoxShape.circle,
////            image: new DecorationImage(
////              fit: BoxFit.fill,
////              image:
////          ),
////        )
//        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(name, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),),
            Padding(
              padding: EdgeInsets.only(top: 3.0),
              child: Text(branch+' | '+year, style: TextStyle(fontSize: 18.0),),),
            Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 18.0),
              child: Text('Candidate | '+category, style: TextStyle(fontSize: 18.0)),
            )
          ],
        ),
        Divider(color: Colors.black, indent: 5.0, endIndent: 5.0, thickness: 0.5, ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 25.0),
                child: Text('Credentials', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 12.0, right: 20.0),
                child: Text(about),
              )
            ],
          ),
        ),

      ],
    ),
  );
}

Widget _createManifestos(
    {String name, String branch, String year, String category, String about}) {
  return new Container(
    child: new Column(
      children: <Widget>[
//        new Container(
//          width: 120.0,
//          height: 120.0,
////          decoration: new BoxDecoration(
////            shape: BoxShape.circle,
////            image: new DecorationImage(
////              fit: BoxFit.fill,
////              image:
////          ),
////        )
//        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(name, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),),
            Padding(
              padding: EdgeInsets.only(top: 3.0),
              child: Text(branch+' | '+year, style: TextStyle(fontSize: 18.0),),),
            Padding(
              padding: EdgeInsets.only(top: 12.0, bottom: 18.0),
              child: Text('Candidate | '+category, style: TextStyle(fontSize: 18.0)),
            )
          ],
        ),
        Divider(color: Colors.black, indent: 5.0, endIndent: 5.0, thickness: 0.5, ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0, top: 25.0),
                child: Text('Manifestos', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 12.0, right: 20.0),
                child: Text(about),
              )
            ],
          ),
        ),

      ],
    ),
  );
}

class ForumPostList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForumPostListState();
  }
}

class _ForumPostListState extends State<ForumPostList> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 15.0),
            child: Text('Forum', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 12.0, right: 20.0),
            child: _createPostItem(
              heading: "Heading",
              onTap: ()=> Navigator.of(context).pushNamed('/forum'),
              text: "just some random shit for your fucking entertainment expressing hatred. just some random shit for your fucking entertainment expressing hatred. just some random shit for your fucking entertainment expressing hatred",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 12.0, right: 20.0),
            child: _createFollowedPostItem(
              heading: "Heading",
              text: "just some random shit for your fucking entertainment expressing hatred. just some random shit for your fucking entertainment expressing hatred",
              onTap: ()=> Navigator.of(context).pushNamed('/forum'),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _createPostItem({String heading, String text, GestureTapCallback onTap}) {
  return new InkWell(
    onTap: onTap,
    child: Card(
      elevation: 5.0,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: new ListTile(
          title: Text(heading, style: TextStyle(fontSize: 18.0),),
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          subtitle: new Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 15.0,),
                child: Text(text, style: TextStyle(fontSize: 15.0,),
                ),
              ),
            ],
          ),
          trailing: Icon(Icons.bookmark_border, color: Colors.grey, size: 30.0,),
        ),
      ),
    ),
  );
}


Widget _createFollowedPostItem ({String heading, String text, GestureTapCallback onTap}) {

  return new InkWell(
    onTap: onTap,
      child: Card(
        elevation: 5.0,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: new ListTile(
            title: Text(heading, style: TextStyle(fontSize: 18.0),),
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
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
      )
  );
}

class ForumPost extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ForumPostState();
  }
}

class _ForumPostState extends State<ForumPost> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
        title: Text("Forum"),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed: ()=> Navigator.pop(context, false),
          ),
    ),
       body: new Container(
         margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
         child: Column(
           children: <Widget>[
              _createPostBody(
                heading: "Heading",
                text: "Just some random text. Just some random text. Just some random text. Just some random text. Just some random text. "
              ),
             Padding(
                 padding: EdgeInsets.only(left: 15.0, right: 15.0),
               child: TextFormField(
                   decoration: InputDecoration(
                       hintText: 'Write a comment...'
                   )
               ),
             ),

           ],
         )
         ),
       );
  }
}

Widget _createPostBody({String heading, String text}) {
  return new Container(
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 25.0),
          child: Text(heading, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 15.0,left: 10.0),
          child: Text(text, style: TextStyle(fontSize: 15.0,),
        ),
        ),
        Row(
           mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text('VIEW ALL COMMENTS', style: TextStyle(color: Colors.blue, fontSize: 15.0),),
            ),
      ]
    ),
  ]),
  );
}