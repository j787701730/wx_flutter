import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('零钱'),
        actions: <Widget>[
          InkWell(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Center(
                child: Text('零钱明细'),
              ),
            ),
            onTap: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => new ChatDetail()),
//            );
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setHeight(50.0),
                bottom: ScreenUtil.getInstance().setHeight(50.0),
              ),
              child: Image.asset(
                'images/balance.png',
                width: ScreenUtil.getInstance().setWidth(186.0),
                height: ScreenUtil.getInstance().setHeight(186.0),
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  '我的零钱',
                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(40.0)),
              child: Center(
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      text: '￥',
                      children: <TextSpan>[
                        TextSpan(
                          text: '999999999.99',
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(84.0)),
                        )
                      ],
                      style: TextStyle(color: Colors.black, fontSize: ScreenUtil.getInstance().setSp(70.0))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(80.0)),
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(40.0),
                right: ScreenUtil.getInstance().setWidth(40.0),
              ),
              child: RaisedButton(
                onPressed: () {},
                elevation: 1,
                child: Text(
                  '充值',
                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(34.0)),
                ),
                textColor: Colors.white,
                color: Color(0xff1AAD19),
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(26.0),
                  bottom: ScreenUtil.getInstance().setHeight(26.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(24.0), bottom: ScreenUtil.getInstance().setHeight(44.0)),
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(40.0),
                right: ScreenUtil.getInstance().setWidth(40.0),
              ),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  '提现',
                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(34.0)),
                ),
                textColor: Colors.black,
                color: Colors.white,
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(26.0),
                  bottom: ScreenUtil.getInstance().setHeight(26.0),
                ),
              ),
            ),
            Container(
              height: ScreenUtil.getInstance().setHeight(20.0),
              color: Color(0xffEFEFF5),
            ),
            Container(
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setHeight(40.0),
                bottom: ScreenUtil.getInstance().setHeight(40.0),
                left: ScreenUtil.getInstance().setHeight(30.0),
                right: ScreenUtil.getInstance().setHeight(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/diamonds.png',
                    width: ScreenUtil.getInstance().setWidth(42.0),
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    padding: EdgeInsets.only(
//                      left: ScreenUtil.getInstance().setWidth(24.0),
//                      right: ScreenUtil.getInstance().setWidth(34.0),
                        ),
                    child: Text(
                      '零钱通',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setWidth(24.0),
//                      right: ScreenUtil.getInstance().setWidth(24.0),
                    ),
                    child: Text(
                      '随时支付，并享收益',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(32.0), color: Color(0xff888888)),
                    ),
                  ),
                  Icon(Icons.chevron_right, size: ScreenUtil.getInstance().setSp(56.0), color: Color(0xff888888))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setWidth(24.0),
                bottom: ScreenUtil.getInstance().setWidth(24.0),
              ),
              color: Color(0xffEFEFF5),
              child: Column(
                children: <Widget>[
                  Text(
                    '常见问题',
                    style: TextStyle(color: Color(0xff576B95), fontSize: ScreenUtil.getInstance().setSp(26.0)),
                  ),
                  Text(
                    '本服务由财付通提供',
                    style: TextStyle(color: Color(0xff888888), fontSize: ScreenUtil.getInstance().setSp(26.0)),
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
