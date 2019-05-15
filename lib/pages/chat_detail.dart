import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class ChatDetail extends StatefulWidget {
  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  bool isTop = false;
  bool isMsg = false;

  topChange(val) {
    setState(() {
      isTop = val;
    });
  }

  msgChange(val) {
    setState(() {
      isMsg = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('聊天详情'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(40.0)),
        color: Color(0xffEFEFF5),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              height: ScreenUtil.getInstance().setHeight(210.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(46.0)),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          child: Image.asset(
                            'images/wu.jpg',
                            width: ScreenUtil.getInstance().setWidth(100.0),
                            height: ScreenUtil.getInstance().setHeight(100.0),
                          ),
                        ),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(100.0),
                          padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(14.0)),
                          child: Center(
                            child: Text(
                              '氢气球',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(22.0)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(40.0)),
                    height: ScreenUtil.getInstance().setHeight(100.0),
                    width: ScreenUtil.getInstance().setWidth(100.0),
                    decoration:
                        BoxDecoration(border: Border.all(color: Color(0xffCCCCCC)), borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xffCCCCCC),
                        size: ScreenUtil.getInstance().setSp(96.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
//              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '聊天小程序',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )),
                  Container(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffC7C7CC),
                      size: ScreenUtil.getInstance().setSp(52.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
//              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '查找聊天内容',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )),
                  Container(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffC7C7CC),
                      size: ScreenUtil.getInstance().setSp(52.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
//              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '置顶聊天',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )),
                  Container(
                    child: Container(
                      child: CupertinoSwitch(value: isTop, onChanged: topChange),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Color(0xffD9D9D9)),
                  )),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '消息免打扰',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )),
                  Container(
                    child: CupertinoSwitch(value: isMsg, onChanged: msgChange),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
//              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '设置当前聊天背景',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )),
                  Container(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffC7C7CC),
                      size: ScreenUtil.getInstance().setSp(52.0),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
//              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '清空聊天记录',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: Color(0xffD9D9D9)), top: BorderSide(color: Color(0xffD9D9D9)))),
//              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(36.0)),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Text(
                      '投诉',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  )),
                  Container(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xffC7C7CC),
                      size: ScreenUtil.getInstance().setSp(52.0),
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
