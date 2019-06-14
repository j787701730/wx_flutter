import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

//import 'package:fluro/fluro.dart';
//import '../routes.dart';
import 'message_detail.dart';
import 'wx_scan.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  _popupMenuItem(title, image, {textSize = 14.0, imgSize: 32.0}) {
    return PopupMenuItem(
      child: GestureDetector(
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
        onTap: () {
          if (title == '扫一扫') {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new WxScan()),
            );
          }
        },
      ),
    );
  }

  List list = [
    {'pic': 'images/li.jpg', 'name': '李', 'num': 3},
    {'pic': 'images/wu.jpg', 'name': '吴', 'num': 0},
    {'pic': 'images/chen.jpg', 'name': '陈', 'num': 0},
    {'pic': 'images/pan.jpg', 'name': '潘', 'num': 0},
    {'pic': 'images/yu.jpg', 'name': '余', 'num': 3000},
    {'pic': 'images/li.jpg', 'name': '李', 'num': 0},
    {'pic': 'images/wu.jpg', 'name': '吴', 'num': 0},
    {'pic': 'images/chen.jpg', 'name': '陈', 'num': 0},
    {'pic': 'images/pan.jpg', 'name': '潘', 'num': 0},
    {'pic': 'images/yu.jpg', 'name': '余', 'num': 0},
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
            child: InkWell(
              onTap: () {
//                  Routes.router.navigateTo(context, 'messageDetail',transition: TransitionType.inFromRight);
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new MessageDetail({'name': item['name']})),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1))),
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  right: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setHeight(20.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: ScreenUtil.getInstance().setWidth(92.0),
                      height: ScreenUtil.getInstance().setHeight(92.0),
//                      padding: EdgeInsets.only(
//                        top: ScreenUtil.getInstance().setHeight(20.0),
//                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20.0)),
                            child: Image.asset(
                              item['pic'],
                              width: ScreenUtil.getInstance().setWidth(72.0),
                              height: ScreenUtil.getInstance().setHeight(72.0),
                            ),
                          ),
                          '${item['num']}' != '0'
                              ? Positioned(
                                  right: ScreenUtil.getInstance().setHeight(6.0),
                                  top: ScreenUtil.getInstance().setHeight(6.0),
                                  child: Container(
                                    width: ScreenUtil.getInstance().setWidth(36.0),
                                    height: ScreenUtil.getInstance().setWidth(36.0),
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF43531),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(36.0)))),
                                    child: Center(
                                      child: Text(
                                        '${item['num']}',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(18.0)),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ))
                              : Placeholder(
                                  fallbackWidth: 0,
                                  fallbackHeight: 0,
                                  color: Colors.transparent,
                                )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20.0)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                  child: Text(
                                item['name'],
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(28.0)),
                              )),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(26 / 2 * 5),
                                child: Text(
                                  '17:50',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Color(0xFFB2B2B2), fontSize: ScreenUtil.getInstance().setSp(24.0)),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${item['name']}是个天才',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Color(0xffB2B2B2)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )),
                  ],
                ),
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
