import 'package:elect_app/screens/all.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(
    new MaterialApp(
      title: "ELECTapp",
      home: Categories(),
        routes: <String, WidgetBuilder> {
          '/candidates': (BuildContext context) => new CandidatesPage(),
          '/compare' : (BuildContext context) => new ComparePage(),
          '/followed_posts' : (BuildContext context) => new FollowedPostsPage(),
          '/categories' : (BuildContext context) => new Categories(),
          '/forum': (BuildContext context) => new ForumPost(),
        }
    ) //MaterialApp
  );
}

//class DBConnection {
//
//  static DBConnection _instance;
//
//  final String _host = "10.76.0.80";
//  final String _port = "27017";
//  final String _dbName = "test";
//  Db _db;
//
//  static getInstance(){
//    if(_instance == null) {
//      _instance = DBConnection();
//    }
//    return _instance;
//  }
//
//  Future<Db> getConnection() async{
//    if (_db == null){
//      try {
//        _db = Db(_getConnectionString());
//        await _db.open();
//        print('connected');
//      } catch(e){
//        print(e);
//      }
//    }
//    return _db;
//  }
//
//  _getConnectionString(){
//    return "mongodb://$_host:$_port/$_dbName";
//  }
//
//  closeConnection() {
//    _db.close();
//  }
//
//}

class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Categories> {
//  int id;
//  String post;
//  String url = 'http://10.76.0.80:5000/get/Candidates/Hostel';
//  List list = List();
//  var isLoading = false;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text("Categories"),
          ),
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 25.0),
                  child: Text("Academics", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 25.0),
                  child: Text("Technical", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 25.0),
                  child: Text("Sports",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                )
              ],
            ),
          )
      );
    }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.white,
          child: new ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                accountName: Text("Name", style: TextStyle(color: Colors.black, fontSize: 18.0),),
                accountEmail: Text("email", style: TextStyle(color: Colors.black, fontSize: 15.0),),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              Divider(color: Colors.black,),
              _createDrawerItem(
                icon: Icons.category,
                text: 'Categories',
                onTap: () => Navigator.of(context).pushNamed('/categories'),
              ),
              _createDrawerItem(
                  icon: Icons.group,
                  text: 'Candidates',
                  onTap: () => Navigator.of(context).pushNamed('/candidates'),
                ),
              _createDrawerItem(
                icon: Icons.compare,
                text: 'Debate',
                onTap: () => Navigator.of(context).pushNamed('/compare'),
              ),
              _createDrawerItem(
                icon: Icons.bookmark,
                text: 'Followed Posts',
                onTap: () => Navigator.of(context).pushNamed('/followed_posts'),
              ),
              Divider(color: Colors.black, indent: 10.0, endIndent: 10.0,),
              _createDrawerItem(
                icon: Icons.settings,
                text: 'Settings',
              ),
              _createDrawerItem(
                icon: Icons.exit_to_app,
                text: 'Logout',
              )
            ],
          ),
        )
    );
  }
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Text(text, style: TextStyle(fontSize: 20.0),),
        )
      ],
    ),
    onTap: onTap,
  );
}