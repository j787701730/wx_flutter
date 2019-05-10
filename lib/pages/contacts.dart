import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
        actions: <Widget>[
          Container(
            width: 40,
            child: InkWell(
                child: Icon(
              Icons.person_add,
              size: 30,
            ),onTap: (){

            },),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[Text('通讯录')],
      ),
    );
  }
}
