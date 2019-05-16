import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/message.dart';
import 'pages/contacts.dart';
import 'pages/find.dart';
import 'pages/personal.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  DateTime _lastPressedAt;
  int _tabIndex = 0;
  List _pageList = [Message(), Contacts(), Find(), Personal()];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      body: WillPopScope(
          child: _pageList[_tabIndex],
          onWillPop: () async {
            if (_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds: 2)) {
              //两次点击间隔超过1秒则重新计时
              _lastPressedAt = DateTime.now();
              return false;
            }
            return true;
          }),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: ScreenUtil.getInstance().setSp(18.0),
        unselectedFontSize: ScreenUtil.getInstance().setSp(18.0),
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Image.asset(
              _tabIndex == 0 ? 'images/weixin_pressed.png' : 'images/weixin_normal.png',
              width: 32.0,
              height: 28.0,
            ),
            title: Container(
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(8.0)),
              child: Text(
                '微信',
                style: TextStyle(color: _tabIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999)),
              ),
            ),
          ),
          new BottomNavigationBarItem(
              icon: Image.asset(
                _tabIndex == 1 ? 'images/contact_list_pressed.png' : 'images/contact_list_normal.png',
                width: 32.0,
                height: 28.0,
              ),
              title: Container(
                padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(8.0)),
                child: Text(
                  '通讯录',
                  style: TextStyle(color: _tabIndex == 1 ? Color(0xFF46c01b) : Color(0xff999999)),
                ),
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                _tabIndex == 2 ? 'images/find_pressed.png' : 'images/find_normal.png',
                width: 32.0,
                height: 28.0,
              ),
              title: Container(
                padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(8.0)),
                child: Text(
                  '发现',
                  style: TextStyle(color: _tabIndex == 2 ? Color(0xFF46c01b) : Color(0xff999999)),
                ),
              )),
          new BottomNavigationBarItem(
              icon: Image.asset(
                _tabIndex == 3 ? 'images/profile_pressed.png' : 'images/profile_normal.png',
                width: 32.0,
                height: 28.0,
              ),
              title: Container(
                padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(8.0)),
                child: Text(
                  '我',
                  style: TextStyle(color: _tabIndex == 3 ? Color(0xFF46c01b) : Color(0xff999999)),
                ),
              )),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
