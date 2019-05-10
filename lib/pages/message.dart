import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  _popupMenuItem(title, image, {textSize = 14.0, imgSize: 32.0}) {
    return PopupMenuItem(
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            width: imgSize,
            height: imgSize,
          ),
          Container(
            width: 6,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: textSize),
          )
        ],
      ),
    );
  }

  List list = [
    {'pic': 'images/li.jpg', 'name': '李'},
    {'pic': 'images/wu.jpg', 'name': '吴'},
    {'pic': 'images/chen.jpg', 'name': '陈'},
    {'pic': 'images/pan.jpg', 'name': '潘'},
    {'pic': 'images/yu.jpg', 'name': '余'},
  ];

  _showSnackBar(action) {}

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            child: Container(
              width: 40,
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            onTap: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(700.0, 86.0, 10.0, 0.0),
                items: <PopupMenuEntry>[
                  _popupMenuItem('发起群聊', 'images/icon_menu_group.png',
                      imgSize: ScreenUtil.getInstance().setWidth(58.0), textSize: ScreenUtil.getInstance().setSp(32.0)),
                  _popupMenuItem('添加朋友', 'images/icon_menu_addfriend.png',
                      imgSize: ScreenUtil.getInstance().setWidth(58.0), textSize: ScreenUtil.getInstance().setSp(32.0)),
                  _popupMenuItem('扫一扫', 'images/icon_menu_scan.png',
                      imgSize: ScreenUtil.getInstance().setWidth(58.0), textSize: ScreenUtil.getInstance().setSp(32.0)),
//                  _popupMenuItem('收付款',icon: Icons.crop_free),
                ],
              );
            },
          ),
          Container(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: list.map<Widget>((item) {
          return Slidable(
            delegate: new SlidableDrawerDelegate(),
            actionExtentRatio: 0.25,
            child: new Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFFD6D6D6), width: 1)),
                color: Colors.white,
              ),
              child: new ListTile(
//                leading: new CircleAvatar(
//                  backgroundColor: Colors.indigoAccent,
//                  child: new Text('3'),
//                  foregroundColor: Colors.white,
//                ),
                contentPadding: EdgeInsets.only(
                    left: ScreenUtil.getInstance().setWidth(20), right: ScreenUtil.getInstance().setWidth(20)),
                leading: Image.asset(item['pic']),
                title: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: new Text(
                            item['name'],
                            style: TextStyle(color: Colors.black, fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(26 / 2 * 5),
                        child: Text(
                          '17:50',
                          style: TextStyle(color: Color(0xFFB2B2B2), fontSize: ScreenUtil.getInstance().setSp(24.0)),
                        ),
                      )
                    ],
                  ),
                ),
                subtitle: new Text('${item['name']}是个天才'),
              ),
            ),
//            actions: <Widget>[
//              new IconSlideAction(
//                caption: 'Archive',
//                color: Colors.blue,
//                icon: Icons.archive,
//                onTap: () => _showSnackBar('Archive'),
//              ),
//              new IconSlideAction(
//                caption: 'Share',
//                color: Colors.indigo,
//                icon: Icons.share,
//                onTap: () => _showSnackBar('Share'),
//              ),
//            ],
            secondaryActions: <Widget>[
              new IconSlideAction(
                caption: '标记已读',
                color: Colors.black45,
                icon: Icons.more_horiz,
                onTap: () => _showSnackBar('More'),
              ),
              new IconSlideAction(
                caption: '删除',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () => _showSnackBar('Delete'),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
