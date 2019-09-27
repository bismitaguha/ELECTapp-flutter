import 'package:elect_app/screens/all.dart';
import 'package:flutter/material.dart';
//import 'package:elect_app/routes/Routes.dart';

void main() {

  runApp(
    MaterialApp(
      title: "ELECTapp",
      home: CandidatesPage(),
    ) //MaterialApp
  );
}

class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body:Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget> [
            Text(
              "List of Categories",
              style: TextStyle(fontSize: 20.0),
            )
          ]
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
                text: 'Categories',),
              _createDrawerItem(
                  icon: Icons.group,
                  text: 'Candidates',
//                  onTap: () => Navigator.pushNamed(context, Routes.candidates),
                ),
              _createDrawerItem(
                icon: Icons.compare,
                text: 'Compare',
//                onTap: () => Navigator.pushNamed(context, Routes.compare),
              ),
              _createDrawerItem(
                icon: Icons.bookmark,
                text: 'Followed Posts',
//                onTap: () => Navigator.pushNamed(context, Routes.followed_posts),
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