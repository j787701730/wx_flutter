import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Subscriptions extends StatefulWidget {
  @override
  _SubscriptionsState createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> with WidgetsBindingObserver {
  var width;
  var top;

  List list = [
    {'pic': 'images/g1.png', 'name': '前端大全', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g2.png', 'name': '奇舞周刊', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g3.png', 'name': '前端之巅', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g4.png', 'name': '巴士惠生活', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g5.png', 'name': '语雀是什么', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g6.png', 'name': 'AI科技大本营', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g7.png', 'name': '技术最前线', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g1.png', 'name': '前端大全', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g2.png', 'name': '奇舞周刊', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g3.png', 'name': '前端之巅', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g4.png', 'name': '巴士惠生活', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g5.png', 'name': '语雀是什么', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g6.png', 'name': 'AI科技大本营', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
    {'pic': 'images/g7.png', 'name': '技术最前线', 'num': 0, 'desc': '尤雨溪：Vue Function-based API RFC'},
  ];

  _showSnackBar(flag) {}

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('订阅号'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: ScreenUtil.getInstance().setHeight(204),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: ScreenUtil.getInstance().setHeight(96),
                            child: Center(
                              child: Text(
                                '通知列表',
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32)),
                              ),
                            ),
                          ),
                          Container(
                            height: ScreenUtil.getInstance().setHeight(12),
                            color: Color(0xffD2D2D3),
                          ),
                          Container(
                            height: ScreenUtil.getInstance().setHeight(96),
                            child: Center(
                              child: Text(
                                '取消',
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32)),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
          )
        ],
      ),
      body: Container(
          color: Color(0xffEFEFF4),
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
                    border: Border.all(color: Color(0xffD9D9DB), width: ScreenUtil.getInstance().setWidth(1)),
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
                              '搜索文章',
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xffC5C5C5)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: list.map<Widget>((item) {
                  return Slidable(
                    delegate: new SlidableDrawerDelegate(),
                    actionExtentRatio: 0.25,
                    child: InkWell(
                      onTap: () {
//                  Routes.router.navigateTo(context, 'messageDetail',transition: TransitionType.inFromRight);
//                    Navigator.push(
//                      context,
//                      new MaterialPageRoute(builder: (context) => new MessageDetail({'name': item['name']})),
//                    );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Color(0xffD9D9D9), width: ScreenUtil.getInstance().setWidth(1))),
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
                                                borderRadius: BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(36.0)))),
                                            child: Center(
                                              child: Text(
                                                '${item['num']}',
                                                style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(18.0)),
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
                                          style: TextStyle(color: Color(0xFFB2B2B2), fontSize: ScreenUtil.getInstance().setSp(24.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '${item['desc']}',
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
                        caption: '删除',
                        color: Colors.red,
                        icon: Icons.delete,
                        onTap: () => _showSnackBar('Delete'),
                      ),
                    ],
                  );
                }).toList(),
              )
            ],
          )),
    );
  }
}
