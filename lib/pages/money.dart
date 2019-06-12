import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Money extends StatefulWidget {
  @override
  _MoneyState createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('收付款'),
        backgroundColor: Color(0xff439057),
      ),
      body: Container(
        color: Color(0xff439057),
        child: ListView(
          padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(60.0)),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  right: ScreenUtil.getInstance().setWidth(20.0)),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(30.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  bottom: ScreenUtil.getInstance().setWidth(20.0),
                  right: ScreenUtil.getInstance().setWidth(30.0)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(4.0)))),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.crop_free,
                              color: Color(0xff439057),
                              size: ScreenUtil.getInstance().setSp(36.0),
                            ),
                            Text(
                              '向商家付款',
                              style:
                                  TextStyle(color: Color(0xff439057), fontSize: ScreenUtil.getInstance().setSp(20.0)),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Color(0xffC9C9C9),
                        size: ScreenUtil.getInstance().setSp(44.0),
                      )
                    ],
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        '点击可查看付款码数字',
                        style: TextStyle(color: Color(0xffC1C1C1), fontSize: ScreenUtil.getInstance().setSp(20.0)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20.0)),
                    child: Center(
                      child: Image.asset(
                        'images/barcode.png',
                        width: ScreenUtil.getInstance().setWidth(300.0),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: ScreenUtil.getInstance().setHeight(40.0),
                    ),
                    padding: EdgeInsets.only(
                      bottom: ScreenUtil.getInstance().setHeight(40.0),
                    ),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffE5E5E5)))),
                    child: Center(
                      child: Image.asset(
                        'images/qcode.png',
                        width: ScreenUtil.getInstance().setWidth(230.0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(15.0)),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/balance.png',
                              width: ScreenUtil.getInstance().setWidth(44.0),
                              fit: BoxFit.fitWidth,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '零钱',
                                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0)),
                                  ),
                                  Text(
                                    '优先使用此支付方式付款',
                                    style: TextStyle(
                                        color: Color(0xffB2B2B2), fontSize: ScreenUtil.getInstance().setSp(18.0)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xffC9C9C9),
                        size: ScreenUtil.getInstance().setSp(44.0),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(20.0),
                  top: ScreenUtil.getInstance().setWidth(20.0),
                  right: ScreenUtil.getInstance().setWidth(20.0)),
              decoration: BoxDecoration(
                  color: Color(0xff509863),
                  borderRadius: BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(4.0)))),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setWidth(20.0),
                        bottom: ScreenUtil.getInstance().setWidth(20.0),
                        left: ScreenUtil.getInstance().setWidth(30.0),
                        right: ScreenUtil.getInstance().setWidth(30.0)),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff6AA77A)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                size: ScreenUtil.getInstance().setSp(44.0),
                                color: Colors.white,
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20.0),
                              ),
                              Text(
                                '二维码收款',
                                style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(24.0)),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xffC9C9C9),
                          size: ScreenUtil.getInstance().setSp(44.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setWidth(20.0),
                        bottom: ScreenUtil.getInstance().setWidth(20.0),
                        left: ScreenUtil.getInstance().setWidth(30.0),
                        right: ScreenUtil.getInstance().setWidth(30.0)),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff6AA77A)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                size: ScreenUtil.getInstance().setSp(44.0),
                                color: Colors.white,
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20.0),
                              ),
                              Text(
                                '赞赏码',
                                style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(24.0)),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xffC9C9C9),
                          size: ScreenUtil.getInstance().setSp(44.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setWidth(20.0),
                        bottom: ScreenUtil.getInstance().setWidth(20.0),
                        left: ScreenUtil.getInstance().setWidth(30.0),
                        right: ScreenUtil.getInstance().setWidth(30.0)),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff6AA77A)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                size: ScreenUtil.getInstance().setSp(44.0),
                                color: Colors.white,
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20.0),
                              ),
                              Text(
                                '群收款',
                                style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(24.0)),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xffC9C9C9),
                          size: ScreenUtil.getInstance().setSp(44.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setWidth(20.0),
                        bottom: ScreenUtil.getInstance().setWidth(20.0),
                        left: ScreenUtil.getInstance().setWidth(30.0),
                        right: ScreenUtil.getInstance().setWidth(30.0)),
                    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff6AA77A)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                size: ScreenUtil.getInstance().setSp(44.0),
                                color: Colors.white,
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20.0),
                              ),
                              Text(
                                '面对面红包',
                                style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(24.0)),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xffC9C9C9),
                          size: ScreenUtil.getInstance().setSp(44.0),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setWidth(20.0),
                        bottom: ScreenUtil.getInstance().setWidth(20.0),
                        left: ScreenUtil.getInstance().setWidth(30.0),
                        right: ScreenUtil.getInstance().setWidth(30.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.monetization_on,
                                size: ScreenUtil.getInstance().setSp(44.0),
                                color: Colors.white,
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20.0),
                              ),
                              Text(
                                '转账到银行卡',
                                style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(24.0)),
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xffC9C9C9),
                          size: ScreenUtil.getInstance().setSp(44.0),
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
