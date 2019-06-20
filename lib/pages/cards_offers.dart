import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsOffers extends StatefulWidget {
  @override
  _CardsOffersState createState() => _CardsOffersState();
}

class _CardsOffersState extends State<CardsOffers> with WidgetsBindingObserver {
  var width;
  var top;
  List cards = ['images/card1.png', 'images/card2.png'];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(title: Text('卡包'), actions: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              left: ScreenUtil.getInstance().setWidth(10),
              right: ScreenUtil.getInstance().setWidth(10),
            ),
            child: Center(
              child: Text('消息'),
            ),
          ),
        )
      ]),
      body: Container(
        color: Color(0xffEFEFF4),
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setWidth(40),
                left: ScreenUtil.getInstance().setWidth(40),
                right: ScreenUtil.getInstance().setWidth(20),
                bottom: ScreenUtil.getInstance().setWidth(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/card_1.png'),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(40),
                        ),
                        Text(
                          '卡',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          '查看全部(2)',
                          style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(28),
                              color: Color(0xff888888)),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xff888888),
                          size: ScreenUtil.getInstance().setSp(60),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: cards.map<Widget>((item) {
                  return Container(
                    padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(20)),
                    child: Image.asset(item),
                  );
                }).toList(),
              ),
              padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(20),
              left: ScreenUtil.getInstance().setHeight(20),
              right: ScreenUtil.getInstance().setWidth(20)),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(30)),
              color: Colors.white,
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setWidth(70),
                left: ScreenUtil.getInstance().setWidth(40),
                right: ScreenUtil.getInstance().setWidth(20),
                bottom: ScreenUtil.getInstance().setWidth(70),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/card_2.png'),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(40),
                        ),
                        Text(
                          '朋友的优惠券',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
//                        Text(
//                          '查看全部(2)',
//                          style: TextStyle(
//                              fontSize: ScreenUtil.getInstance().setSp(28),
//                              color: Color(0xff888888)),
//                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xff888888),
                          size: ScreenUtil.getInstance().setSp(60),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                          color: Color(0xffDFDFDF), width: ScreenUtil.getInstance().setWidth(1)))),
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setWidth(70),
                left: ScreenUtil.getInstance().setWidth(40),
                right: ScreenUtil.getInstance().setWidth(20),
                bottom: ScreenUtil.getInstance().setWidth(70),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/card_3.png'),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(40),
                        ),
                        Text(
                          '我的票券',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
//                        Text(
//                          '查看全部(2)',
//                          style: TextStyle(
//                              fontSize: ScreenUtil.getInstance().setSp(28),
//                              color: Color(0xff888888)),
//                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xff888888),
                          size: ScreenUtil.getInstance().setSp(60),
                        )
                      ],
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
