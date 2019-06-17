import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'message_detail.dart';
import 'new_friends.dart';
import 'group_chat.dart';
import 'add_contacts.dart';
import 'tabs.dart';
import 'subscriptions.dart';

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
        {'pic': 'images/yu.jpg', 'name': '本宝宝'}
      ]
    },
    {
      'type': 'C',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'c'}
      ]
    },
    {
      'type': 'D',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'd'}
      ]
    },
    {
      'type': 'E',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'e'}
      ]
    },
    {
      'type': 'F',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'f'}
      ]
    },
    {
      'type': 'G',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'g'}
      ]
    },
    {
      'type': 'H',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'h'}
      ]
    },
    {
      'type': 'X',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'x'}
      ]
    },
    {
      'type': 'Y',
      'items': [
        {'pic': 'images/yu.jpg', 'name': 'y'}
      ]
    }
  ];

  List tabs = [
    {'tab': 'newFriends', 'name': '新的朋友', 'image': 'icon_addfriend'},
    {'tab': 'groupchat', 'name': '群聊', 'image': 'icon_groupchat'},
    {'tab': 'tabs', 'name': '标签', 'image': 'icon_tabs'},
    {'tab': 'public', 'name': '公众号', 'image': 'icon_public'},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯录'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person_add,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new AddContacts()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
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
                      border: Border.all(
                          color: Color(0xffD9D9DB), width: ScreenUtil.getInstance().setWidth(1)),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil.getInstance().setWidth(6.0)))),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.search,
                                  size: ScreenUtil.getInstance().setWidth(44.0),
                                  color: Color(0xffC5C5C5)),
                              Text(
                                '搜索',
                                style: TextStyle(
                                    fontSize: ScreenUtil.getInstance().setSp(26.0),
                                    color: Color(0xffC5C5C5)),
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
                Column(
                  children: tabs.map<Widget>((item) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffD7D7D7),
                                  width: ScreenUtil.getInstance().setWidth(1)))),
                      padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().setWidth(20.0),
                          top: ScreenUtil.getInstance().setWidth(20.0),
                          bottom: ScreenUtil.getInstance().setWidth(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) {
                              switch (item['tab']) {
                                case 'newFriends':
                                  return NewFriends();
                                  break;
                                case 'groupchat':
                                  return GroupChat();
                                  break;
                                case 'tabs':
                                  return Tabs();
                                  break;
                                case 'public':
                                  return Subscriptions();
                                  break;
                              }
                            }),
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/${item['image']}.png',
                              width: ScreenUtil.getInstance().setWidth(72.0),
                              height: ScreenUtil.getInstance().setHeight(72.0),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                              child: Text(
                                '${item['name']}',
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setWidth(20.0),
                      top: ScreenUtil.getInstance().setWidth(8.0),
                      bottom: ScreenUtil.getInstance().setWidth(8.0)),
                  child: Text(
                    '我的企业',
                    style: TextStyle(
                        fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xff8B8A90)),
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
                            style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(26.0),
                                color: Color(0xff8B8A90)),
                          ),
                        ),
                        Column(
                          children: item['items'].map<Widget>((child) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffD7D7D7),
                                          width: ScreenUtil.getInstance().setWidth(1)))),
                              padding: EdgeInsets.only(
                                  left: ScreenUtil.getInstance().setWidth(20.0),
                                  top: ScreenUtil.getInstance().setWidth(20.0),
                                  bottom: ScreenUtil.getInstance().setWidth(20.0)),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            new MessageDetail({'name': '${child['name']}'})),
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
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil.getInstance().setWidth(20.0)),
                                      child: Text(
                                        '${child['name']}',
                                        style: TextStyle(
                                            fontSize: ScreenUtil.getInstance().setSp(30.0)),
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
          Positioned(
              right: ScreenUtil.getInstance().setWidth(10),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list.map<Widget>((item) {
                      return Text('${item['type']}');
                    }).toList(),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
