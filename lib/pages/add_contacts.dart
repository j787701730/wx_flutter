import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddContacts extends StatefulWidget {
  @override
  _AddContactsState createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> with WidgetsBindingObserver {
  var width;
  var top;
  List list = [
    {'id': 1, 'title': '雷达加朋友', 'desc': '添加身边的朋友', 'image': 'leida'},
    {'id': 2, 'title': '面对面建群', 'desc': '与身边的朋友进入同一个群聊', 'image': 'qun'},
    {'id': 3, 'title': '扫一扫', 'desc': '扫描二维码名片', 'image': 'sao'},
    {'id': 4, 'title': '手机联系人', 'desc': '添加通讯录中的朋友', 'image': 'lianxiren'},
    {'id': 5, 'title': '公众号', 'desc': '获取更多资讯和服务', 'image': 'gongzhao'},
  ];

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
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xffD9D9D9),width: ScreenUtil.getInstance().setWidth(1)),
                  bottom: BorderSide(color: Color(0xffD9D9D9),width: ScreenUtil.getInstance().setWidth(1)),
                ),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30.0), bottom: ScreenUtil.getInstance().setHeight(16.0)),
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setWidth(40.0),
                      top: ScreenUtil.getInstance().setWidth(30.0),
                      bottom: ScreenUtil.getInstance().setWidth(30.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.search, size: ScreenUtil.getInstance().setWidth(40.0), color: Color(0xff3FB838)),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(40.0),
                        ),
                        Text(
                          '微信号/手机号',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0), color: Color(0xffC5C5C5)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Color(0xffD9D9D9),width: ScreenUtil.getInstance().setWidth(1)),
              )),
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(14.0), bottom: ScreenUtil.getInstance().setHeight(70.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '我的微信号：简单快乐',
                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0)),
                  ),
                  Container(
                    width: ScreenUtil.getInstance().setWidth(24.0),
                  ),
                  Image.asset(
                    'images/qrcode.png',
                    width: ScreenUtil.getInstance().setWidth(34.0),
                  ),
                ],
              ),
            ),
            Column(
              children: list.map<Widget>((item) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Color(0xffD9D9D9),width: ScreenUtil.getInstance().setWidth(1)),
                  )),
                  padding: EdgeInsets.only(
                    left: ScreenUtil.getInstance().setWidth(30.0),
                    right: ScreenUtil.getInstance().setWidth(10.0),
                    top: ScreenUtil.getInstance().setHeight(24.0),
                    bottom: ScreenUtil.getInstance().setHeight(24.0),
                  ),
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: ScreenUtil.getInstance().setWidth(72.0),
                          height: ScreenUtil.getInstance().setHeight(72.0),
                          child: Image.asset('images/${item['image']}.png'),
                          margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(30.0)),
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              item['title'],
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(28.0)),
                            ),
                            Text(
                              item['desc'],
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Color(0xffB2B2B2)),
                            )
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
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
