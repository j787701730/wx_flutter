import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'wallet.dart';
import 'me_collect.dart';
import 'my_posts.dart';
import 'cards_offers.dart';
import 'sticker_gallery.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
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
        title: Text('我'),
      ),
      body: Container(
        color: Color(0xffEFEFF5),
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)),
                      top: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30.0)),
              height: ScreenUtil.getInstance().setHeight(176.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              child: Image.asset(
                                'images/yu.jpg',
                                width: ScreenUtil.getInstance().setWidth(130.0),
                                height: ScreenUtil.getInstance().setHeight(130.0),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '余余余余余',
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20.0)),
                                child: Text(
                                  '微信号: XXXXXX',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'images/code.png',
                      width: ScreenUtil.getInstance().setWidth(36.0),
                      height: ScreenUtil.getInstance().setHeight(36.0),
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
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)),
                      top: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)))),
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              height: ScreenUtil.getInstance().setHeight(88.0),
              child: InkWell(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Image.asset(
                              'images/icon_me_money.png',
                              width: ScreenUtil.getInstance().setWidth(48.0),
                              height: ScreenUtil.getInstance().setHeight(48.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Text(
                              '钱包',
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
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Wallet()),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new MeCollect()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                            color: Color(0xffD8D8DA),
                            width: ScreenUtil.getInstance().setWidth(1)))),
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
                              'images/icon_me_collect.png',
                              width: ScreenUtil.getInstance().setWidth(48.0),
                              height: ScreenUtil.getInstance().setHeight(48.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Text(
                              '收藏',
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
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)),
                    )),
                height: ScreenUtil.getInstance().setHeight(88.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Image.asset(
                              'images/icon_me_photo.png',
                              width: ScreenUtil.getInstance().setWidth(48.0),
                              height: ScreenUtil.getInstance().setHeight(48.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Text(
                              '相册',
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
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new MyPosts()),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new CardsOffers()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                            color: Color(0xffD8D8DA),
                            width: ScreenUtil.getInstance().setWidth(1)))),
                height: ScreenUtil.getInstance().setHeight(88.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Image.asset(
                              'images/icon_me_card.png',
                              width: ScreenUtil.getInstance().setWidth(48.0),
                              height: ScreenUtil.getInstance().setHeight(48.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Text(
                              '卡包',
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
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new StickerGallery()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)),
                        top: BorderSide(
                            color: Color(0xffD8D8DA),
                            width: ScreenUtil.getInstance().setWidth(1)))),
                height: ScreenUtil.getInstance().setHeight(88.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Image.asset(
                              'images/icon_me_smile.png',
                              width: ScreenUtil.getInstance().setWidth(48.0),
                              height: ScreenUtil.getInstance().setHeight(48.0),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                            child: Text(
                              '表情',
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
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)),
                      top: BorderSide(
                          color: Color(0xffD8D8DA), width: ScreenUtil.getInstance().setWidth(1)))),
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
                            'images/icon_me_setting.png',
                            width: ScreenUtil.getInstance().setWidth(48.0),
                            height: ScreenUtil.getInstance().setHeight(48.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(30.0)),
                          child: Text(
                            '设置',
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
          ],
        ),
      ),
    );
  }
}
