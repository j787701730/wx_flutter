import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'moments.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
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
        title: Text('发现'),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(40.0)),
        color: Color(0xffEFEFF5),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Moments()),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Image.asset(
                              'images/icon_friends.png',
                              width: ScreenUtil.getInstance().setWidth(48.0),
                              height: ScreenUtil.getInstance().setHeight(48.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Text(
                              '朋友圈',
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'images/yu.jpg',
                        width: ScreenUtil.getInstance().setWidth(64.0),
                        height: ScreenUtil.getInstance().setHeight(64.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xffC7C7CC),
                        size: ScreenUtil.getInstance().setSp(52.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_scan.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '扫一扫',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_shop.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '购物',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_link.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '小程序',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_look.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '看一看',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_search.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '搜一搜',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_shake.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '摇一摇',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_near.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '附近的人',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_bottle.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '漂流瓶',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
                  border:
                      Border(bottom: BorderSide(color: Color(0xffD8D8DA)), top: BorderSide(color: Color(0xffD8D8DA)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Image.asset(
                            'images/icon_game.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '游戏',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
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
