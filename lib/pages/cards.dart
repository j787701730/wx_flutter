import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> with WidgetsBindingObserver {
  var width;
  List list = [
    {'image': 'js', 'no': '1234'},
    {'image': 'gs', 'no': '4567'},
    {'image': 'yz', 'no': '8901'},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('银行卡'),
      ),
      body: Container(
        color: Color(0xff2D3132),
        child: ListView(
          padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
          children: <Widget>[
            Column(
              children: list.map<Widget>((item) {
                return Container(
                  margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(20)),
                  child: InkWell(
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'images/${item['image']}.png',
                            width: width - (ScreenUtil.getInstance().setHeight(20)) * 2,
                            fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                              bottom: ScreenUtil.getInstance().setHeight(44),
                              right: ScreenUtil.getInstance().setWidth(20),
                              child: Text(
                                item['no'],
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(40), color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setWidth(28),
                  bottom: ScreenUtil.getInstance().setWidth(28),
                  left: ScreenUtil.getInstance().setWidth(34),
                  right: ScreenUtil.getInstance().setWidth(14)),
              decoration: BoxDecoration(
                  color: Color(0xff323536),
                  border: Border(
                      top: BorderSide(color: Color(0xff2A2D2E), width: ScreenUtil.getInstance().setWidth(1)),
                      bottom: BorderSide(color: Color(0xff2A2D2E), width: ScreenUtil.getInstance().setWidth(1)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Color(0xff8C8C8C),
                          size: ScreenUtil.getInstance().setSp(60),
                        ),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(10),
                        ),
                        Text(
                          '添加银行卡',
                          style: TextStyle(color: Color(0xff8C8C8C), fontSize: ScreenUtil.getInstance().setSp(30)),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff8C8C8C),
                    size: ScreenUtil.getInstance().setSp(60),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.credit_card,
                    size: ScreenUtil.getInstance().setSp(60),
                    color: Color(0xff576B95),
                  ),
                  Container(
                    width: ScreenUtil.getInstance().setWidth(10),
                  ),
                  Text(
                    '申请信用卡',
                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30), color: Color(0xff576B95)),
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: ScreenUtil.getInstance().setSp(60),
                    color: Color(0xff576B95),
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
