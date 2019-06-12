import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'message_detail.dart';
import 'new_friends.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List list = [
    {
      'type': 'A',
      'items': [
        {'pic': 'images/yu.jpg', 'name': '啊啊啊啊'},
        {'pic': 'images/li.jpg', 'name': '阿阿阿阿阿'},
        {'pic': 'images/wu.jpg', 'name': '啊啊啊啊'},
        {'pic': 'images/chen.jpg', 'name': '啊啊啊啊'},
      ]
    },
    {
      'type': 'B',
      'items': [
        {'pic': 'images/yu.jpg', 'name': '比'}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
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
              ),
              onTap: () {},
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xffF0EFF5),
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
                            '搜索',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xffC5C5C5)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: ScreenUtil.getInstance().setWidth(10.0),
                      top: ScreenUtil.getInstance().setHeight(4.0),
                      child: Icon(
                        Icons.keyboard_voice,
                        size: ScreenUtil.getInstance().setWidth(44.0),
                        color: Color(0xffC5C5C5),
                      ))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Color(0xffD7D7D7)))),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setWidth(20.0)),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new NewFriends()),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/icon_addfriend.png',
                      width: ScreenUtil.getInstance().setWidth(72.0),
                      height: ScreenUtil.getInstance().setHeight(72.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                      child: Text(
                        '新的朋友',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Color(0xffD7D7D7)))),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setWidth(20.0)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/icon_groupchat.png',
                    width: ScreenUtil.getInstance().setWidth(72.0),
                    height: ScreenUtil.getInstance().setHeight(72.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                    child: Text(
                      '群聊',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Color(0xffD7D7D7)))),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setWidth(20.0)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/icon_public.png',
                    width: ScreenUtil.getInstance().setWidth(72.0),
                    height: ScreenUtil.getInstance().setHeight(72.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                    child: Text(
                      '标签',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setWidth(20.0)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/icon_public.png',
                    width: ScreenUtil.getInstance().setWidth(72.0),
                    height: ScreenUtil.getInstance().setHeight(72.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                    child: Text(
                      '公众号',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(8.0),
                  bottom: ScreenUtil.getInstance().setWidth(8.0)),
              child: Text(
                '我的企业',
                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xff8B8A90)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setWidth(20.0)),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'images/yu.jpg',
                    width: ScreenUtil.getInstance().setWidth(72.0),
                    height: ScreenUtil.getInstance().setHeight(72.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                    child: Text(
                      '福州有限公司',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: list.map<Widget>((item) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().setWidth(20.0),
                          top: ScreenUtil.getInstance().setWidth(8.0),
                          bottom: ScreenUtil.getInstance().setWidth(8.0)),
                      child: Text(
                        '${item['type']}',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xff8B8A90)),
                      ),
                    ),
                    Column(
                      children: item['items'].map<Widget>((child) {
                        return Container(
                          decoration: BoxDecoration(color: Colors.white, border: Border(bottom: BorderSide(color: Color(0xffD7D7D7)))),
                          padding: EdgeInsets.only(
                              left: ScreenUtil.getInstance().setWidth(20.0),
                              top: ScreenUtil.getInstance().setWidth(20.0),
                              bottom: ScreenUtil.getInstance().setWidth(20.0)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(builder: (context) => new MessageDetail({'name': '${child['name']}'})),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  '${child['pic']}',
                                  width: ScreenUtil.getInstance().setWidth(72.0),
                                  height: ScreenUtil.getInstance().setHeight(72.0),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                                  child: Text(
                                    '${child['name']}',
                                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
