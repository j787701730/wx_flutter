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
      appBar: AppBar(
        title: Text('添加朋友'),
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(16.0),
                  right: ScreenUtil.getInstance().setWidth(16.0),
                  top: ScreenUtil.getInstance().setHeight(16.0),
                  bottom: ScreenUtil.getInstance().setHeight(16.0)),
              height: ScreenUtil.getInstance().setHeight(56.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffD9D9DB)),
                  borderRadius: BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(6.0)))),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.search, size: ScreenUtil.getInstance().setWidth(44.0), color: Color(0xffC5C5C5)),
                          Text(
                            '微信号/手机号',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xffC5C5C5)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setHeight(20.0),
                bottom: ScreenUtil.getInstance().setHeight(20.0),
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.phone_android,
                    color: Color(0xff1AAD19),
                    size: ScreenUtil.getInstance().setWidth(72.0),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20.0)),
                      child: Text(
                        '添加手机联系人',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Color(0xffC5C5C5)),
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(14.0), bottom: ScreenUtil.getInstance().setHeight(70.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '我的微信号：简单快乐',
                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0)),
                  ),
                  Icon(
                    Icons.casino,
                    size: ScreenUtil.getInstance().setSp(68.0),
                    color: Color(0xff1AAD19),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(30.0),
                right: ScreenUtil.getInstance().setWidth(30.0),
                top: ScreenUtil.getInstance().setHeight(24.0),
                bottom: ScreenUtil.getInstance().setHeight(24.0),
              ),
              child: InkWell(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: ScreenUtil.getInstance().setWidth(72.0),
                      height: ScreenUtil.getInstance().setHeight(72.0),
                      child: Image.asset('images/icon_friends.png'),
                      margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(30.0)),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '雷达加朋友',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(28.0)),
                        ),
                        Text('')
                      ],
                    )),
                    Container(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: ScreenUtil.getInstance().setSp(60.0),
                        color: Color(0xffC7C7CC),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
