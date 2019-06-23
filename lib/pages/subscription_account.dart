import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'subscriptions.dart';

class SubscriptionAccount extends StatefulWidget {
  @override
  _SubscriptionAccountState createState() => _SubscriptionAccountState();
}

class _SubscriptionAccountState extends State<SubscriptionAccount> with WidgetsBindingObserver {
  var width;
  var top;
  var currentPanelIndex = -1;
  bool isOffstage = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('订阅号信息'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Subscriptions()),
                );
              }),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(50),
                  right: ScreenUtil.getInstance().setWidth(50),
                  top: ScreenUtil.getInstance().setHeight(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/yu.jpg',
                              width: ScreenUtil.getInstance().setWidth(56),
                              height: ScreenUtil.getInstance().setHeight(56),
                            ),
                            Container(
                              width: ScreenUtil.getInstance().setWidth(10),
                            ),
                            Text(
                              'xx大全',
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                            )
                          ],
                        ),
                      ),
                      Text(
                        '16分钟前',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(28), color: Color(0xffB2B2B2)),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: ScreenUtil.getInstance().setHeight(40),
                      bottom: ScreenUtil.getInstance().setHeight(40),
                    ),
                    child: Text(
                      '尤雨溪：Vue Function-based API RFC',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32)),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'images/vue.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
                    padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30), bottom: ScreenUtil.getInstance().setHeight(30)),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Color(0xffE6E6E6), width: ScreenUtil.getInstance().setWidth(1)),
                            bottom: BorderSide(color: Color(0xffE6E6E6), width: ScreenUtil.getInstance().setWidth(1)))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          '面向对象：有趣的灵魂二百多斤？不不不，90斤足矣',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        )),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20)),
                          child: Image.asset(
                            'images/yu.jpg',
                            width: ScreenUtil.getInstance().setWidth(84),
                            height: ScreenUtil.getInstance().setWidth(84),
                          ),
                        )
                      ],
                    ),
                  ),
                  Offstage(
                    offstage: isOffstage,
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.only(
                          top: ScreenUtil.getInstance().setWidth(30),
                          bottom: ScreenUtil.getInstance().setWidth(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '余下3篇',
                              style: TextStyle(color: Color(0xff576B95), fontSize: ScreenUtil.getInstance().setSp(28)),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: Color(0xffC7C7CC),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isOffstage = !isOffstage;
                        });
                      },
                    ),
                  ),
                  Offstage(
                    offstage: !isOffstage,
                    child: Column(
                      children: <Widget>[
                        Container(

                            padding: EdgeInsets.only(
                                top: ScreenUtil.getInstance().setHeight(30), bottom: ScreenUtil.getInstance().setHeight(30)),
                            decoration: BoxDecoration(
                                color: Colors.white,
//                                border: Border(top: BorderSide(color: Color(0xffE6E6E6), width: ScreenUtil.getInstance().setWidth(1)))
                                ),
                            child: Row(children: <Widget>[
                              Expanded(
                                  child: Text(
                                '面向对象：有趣的灵魂二百多斤？不不不，90斤足矣',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                              )),
                              Container(
                                margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20)),
                                child: Image.asset(
                                  'images/yu.jpg',
                                  width: ScreenUtil.getInstance().setWidth(84),
                                  height: ScreenUtil.getInstance().setWidth(84),
                                ),
                              ),
                            ]))
                      ],
                    ),
                  )
//                  SingleChildScrollView(
//                    child: ExpansionPanelList(
//                      animationDuration: Duration(milliseconds: 500),
//                      expansionCallback: (panelIndex, isExpanded) {
//                        setState(() {
//                          currentPanelIndex = (currentPanelIndex != panelIndex) ? panelIndex : -1;
//                        });
//                      },
//                      children: <ExpansionPanel>[
//                        ExpansionPanel(
//                            headerBuilder: (context, isExpanded) {
//                              return Container(
//                                color: Colors.white,
//                                child: Row(
//                                children: <Widget>[
//                                  Text('余下3篇')
//                                ],
//                                ),
//                              );
//                            },
//                            body: ListBody(
//                              children: <Widget>[
//                                Container(
//                                  margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
//                                  padding: EdgeInsets.only(
//                                      top: ScreenUtil.getInstance().setHeight(30), bottom: ScreenUtil.getInstance().setHeight(30)),
//                                  decoration: BoxDecoration(
//                                      color: Colors.white,
//                                      border:
//                                          Border(top: BorderSide(color: Color(0xffE6E6E6), width: ScreenUtil.getInstance().setWidth(1)))),
//                                  child: Row(
//                                    children: <Widget>[
//                                      Expanded(
//                                          child: Text(
//                                        '面向对象：有趣的灵魂二百多斤？不不不，90斤足矣',
//                                        maxLines: 2,
//                                        overflow: TextOverflow.ellipsis,
//                                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
//                                      )),
//                                      Container(
//                                        margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20)),
//                                        child: Image.asset(
//                                          'images/yu.jpg',
//                                          width: ScreenUtil.getInstance().setWidth(84),
//                                          height: ScreenUtil.getInstance().setWidth(84),
//                                        ),
//                                      )
//                                    ],
//                                  ),
//                                ),
//                              ],
//                            ),
//                            isExpanded: currentPanelIndex == 0)
//                      ],
//                    ),
//                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffF4F4F4),
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(100), bottom: ScreenUtil.getInstance().setHeight(100)),
              child: Center(
                child: Text(
                  '以下是更早消息',
                  style: TextStyle(color: Color(0xff9B9B9B)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(50),
                  right: ScreenUtil.getInstance().setWidth(50),
                  top: ScreenUtil.getInstance().setHeight(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/yu.jpg',
                              width: ScreenUtil.getInstance().setWidth(56),
                              height: ScreenUtil.getInstance().setHeight(56),
                            ),
                            Container(
                              width: ScreenUtil.getInstance().setWidth(10),
                            ),
                            Text(
                              'xx大全',
                              style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                            )
                          ],
                        ),
                      ),
                      Text(
                        '16分钟前',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(28), color: Color(0xffB2B2B2)),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: ScreenUtil.getInstance().setHeight(40),
                      bottom: ScreenUtil.getInstance().setHeight(40),
                    ),
                    child: Text(
                      '尤雨溪：Vue Function-based API RFC',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32)),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'images/vue.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
                    padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30), bottom: ScreenUtil.getInstance().setHeight(30)),
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Color(0xffE6E6E6), width: ScreenUtil.getInstance().setWidth(1)))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(
                          '面向对象：有趣的灵魂二百多斤？不不不，90斤足矣',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        )),
                        Container(
                          margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20)),
                          child: Image.asset(
                            'images/yu.jpg',
                            width: ScreenUtil.getInstance().setWidth(84),
                            height: ScreenUtil.getInstance().setWidth(84),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
