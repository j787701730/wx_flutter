import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupChat extends StatefulWidget {
  @override
  _GroupChatState createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> with WidgetsBindingObserver {
  var width;
  var top;
  List list = [
    {
      'name': '都联盟',
      'images': [
        'yu',
        'pan',
        'li',
        'li',
        'li',
        'li',
        'wu',
        'chen',
        'chen',
      ]
    },
    {
      'name': '都联盟2',
      'images': [
        'yu',
        'pan',
        'li',
        'wu',
        'chen',
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('群聊'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Color(0xffEFEFF4),
                  border: Border(bottom: BorderSide(color: Color(0xffD6D7DC),width: ScreenUtil.getInstance().setWidth(1)))),
              child: Container(
                margin: EdgeInsets.only(
                    left: ScreenUtil.getInstance().setWidth(16.0),
                    right: ScreenUtil.getInstance().setWidth(16.0),
                    top: ScreenUtil.getInstance().setHeight(16.0),
                    bottom: ScreenUtil.getInstance().setHeight(16.0)),
                height: ScreenUtil.getInstance().setHeight(56.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffD9D9DB),width: ScreenUtil.getInstance().setWidth(1)),
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
                  ],
                ),
              ),
            ),
            Column(
              children: list.map<Widget>((item) {
                return Container(
                  padding: EdgeInsets.only(
                    left: ScreenUtil.getInstance().setWidth(20.0),
                    right: ScreenUtil.getInstance().setWidth(20.0),
                    top: ScreenUtil.getInstance().setWidth(20.0),
                    bottom: ScreenUtil.getInstance().setWidth(20.0),
                  ),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffD6D7DC),width: ScreenUtil.getInstance().setWidth(1)))),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: ScreenUtil.getInstance().setWidth(72.0),
                        height: ScreenUtil.getInstance().setHeight(72.0),
                        margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
                        color: Color(0xffDCDDDF),
                        padding: EdgeInsets.all(ScreenUtil.getInstance().setWidth(1)),
                        child: Center(
                          child: Wrap(
                            children: item['images'].map<Widget>((img) {
                              return Container(
                                padding: EdgeInsets.all(ScreenUtil.getInstance().setWidth(1)),
                                child: Image.asset(
                                  'images/${img}.jpg',
                                  width: (ScreenUtil.getInstance().setWidth(72.0) - ScreenUtil.getInstance().setWidth(8.0)) / 3,
                                  height: (ScreenUtil.getInstance().setWidth(72.0) - ScreenUtil.getInstance().setWidth(8.0)) / 3,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Text(
                        item['name'],
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
            Container(
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(32.0)),
              child: Center(
                child: Text(
                  '${list.length}个群聊',
                  style: TextStyle(color: Color(0xff808080), fontSize: ScreenUtil.getInstance().setSp(32.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
