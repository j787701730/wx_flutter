import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> with WidgetsBindingObserver {
  var width;
  var top;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('个人信息'),
      ),
      body: Container(
        color: Color(0xffEFEFF5),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)),
                      bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)))),
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(30),
              ),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30), bottom: ScreenUtil.getInstance().setHeight(40)),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      right: ScreenUtil.getInstance().setWidth(10),
                      top: ScreenUtil.getInstance().setWidth(20),
                      bottom: ScreenUtil.getInstance().setWidth(20),
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '头像',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/yu.jpg',
                                width: ScreenUtil.getInstance().setWidth(128),
                                height: ScreenUtil.getInstance().setHeight(128),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: ScreenUtil.getInstance().setSp(60),
                                color: Color(0xffC7C7CC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: ScreenUtil.getInstance().setWidth(10),
                      top: ScreenUtil.getInstance().setWidth(24),
                      bottom: ScreenUtil.getInstance().setWidth(24),
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '名字',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                '简单可乐',
                                style: TextStyle(color: Color(0xff888888), fontSize: ScreenUtil.getInstance().setSp(28)),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: ScreenUtil.getInstance().setSp(60),
                                color: Color(0xffC7C7CC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: ScreenUtil.getInstance().setWidth(10),
                      top: ScreenUtil.getInstance().setWidth(24),
                      bottom: ScreenUtil.getInstance().setWidth(24),
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '微信号',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                'abcdefg',
                                style: TextStyle(color: Color(0xff888888), fontSize: ScreenUtil.getInstance().setSp(28)),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: ScreenUtil.getInstance().setSp(60),
                                color: Color(0xffC7C7CC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: ScreenUtil.getInstance().setWidth(10),
                      top: ScreenUtil.getInstance().setWidth(24),
                      bottom: ScreenUtil.getInstance().setWidth(24),
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '我的二维码',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/code.png',
                                width: ScreenUtil.getInstance().setWidth(34),
                                height: ScreenUtil.getInstance().setHeight(34),
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: ScreenUtil.getInstance().setSp(60),
                                color: Color(0xffC7C7CC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      right: ScreenUtil.getInstance().setWidth(10),
                      top: ScreenUtil.getInstance().setWidth(24),
                      bottom: ScreenUtil.getInstance().setWidth(24),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '更多',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.chevron_right,
                                size: ScreenUtil.getInstance().setSp(60),
                                color: Color(0xffC7C7CC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(30),
                right: ScreenUtil.getInstance().setWidth(10),
                top: ScreenUtil.getInstance().setWidth(24),
                bottom: ScreenUtil.getInstance().setWidth(24),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)),
                    top: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1)),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '我的地址',
                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.chevron_right,
                          size: ScreenUtil.getInstance().setSp(60),
                          color: Color(0xffC7C7CC),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
