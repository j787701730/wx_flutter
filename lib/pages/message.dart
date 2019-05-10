import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  @override
  Widget build(BuildContext context) {
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
        children: <Widget>[Text('微信')],
      ),
    );
  }
}
