import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddContacts extends StatefulWidget {
  @override
  _AddContactsState createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> with WidgetsBindingObserver {
  var width;
  var top;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      body: Text('aa'),
    );
  }
}
