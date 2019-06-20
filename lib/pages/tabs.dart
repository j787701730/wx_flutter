import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'add_tab.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with WidgetsBindingObserver {
  var width;
  var top;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('标签'),
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        child: ListView(
          children: <Widget>[
            Container(
              height: ScreenUtil.getInstance().setHeight(580),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '暂无标签',
                      style: TextStyle(
                          color: Color(0xffB2B2B2), fontSize: ScreenUtil.getInstance().setSp(32)),
                    ),
                    Text(
                      '通过标签你可方便的查找和管理联系人',
                      style: TextStyle(
                          color: Color(0xffB2B2B2), fontSize: ScreenUtil.getInstance().setSp(26)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(40),
                right: ScreenUtil.getInstance().setWidth(40),
              ),
              child: FlatButton(
                color: Color(0xff1AAD19),
                padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(26),
                  bottom: ScreenUtil.getInstance().setHeight(26),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new AddTab()),
                  );
                },
                child: Text(
                  '新建标签',
                  style:
                      TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(32)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
