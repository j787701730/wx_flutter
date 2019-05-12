import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageDetail extends StatefulWidget {
  @override
  _MessageDetailState createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[Text('MessageDetail')],
      ),
    );
  }
}
