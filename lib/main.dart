import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'assets/constants.dart';

void main() => runApp(Passless());

class Passless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passless',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Passless'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: blue_primary),
                accountName: Text("User "),
                accountEmail: Text("email.address@email.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: blue_dark,
                  child: Text(
                    "U",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
              ListTile(
                  title: Text("Account"),
                  leading: Icon(Icons.account_circle),
                  onTap: () {}),
              ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                  onTap: () {}),
              ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.info_outline),
                  onTap: () {}),
              Divider(),
              ListTile(
                  title: Text("Logout", style: TextStyle(color: Colors.redAccent),),
                  leading: Icon(Icons.logout, color: Colors.redAccent,),
                  onTap: () {}),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Align(
                    alignment: FractionalOffset.topCenter,
                    child: Icon(Icons.lock, size: 150, color: blue_primary)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 30, 0, 0),
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "30 Day login history:",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
              Container(
                height: 315,
                margin: EdgeInsets.fromLTRB(40, 20, 40, 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  children: <Widget>[
                    CustomCard(title: "Youtube",date: "16.4.2021"),
                    CustomCard(title: "Amazon",date: "15.4.2021"),
                    CustomCard(title: "Twitch",date: "10.4.2021"),
                    CustomCard(title: "Facebook",date: "5.4.2021"),
                    CustomCard(title: "Pinterest",date: "30.3.2021"),
                    CustomCard(title: "Amazon",date: "29.3.2021"),
                    CustomCard(title: "OnlyFans",date: "18.3.2021"),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
          child: FloatingActionButton(
            backgroundColor: blue_button,
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          ),
        ),
      ),
    );
  }
}

class CustomCard extends Card {

  CustomCard({this.title, this.date});

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(date),
        trailing: Container(
            child: Icon(Icons.more_vert),
      ),
      ),
    );
  }
}