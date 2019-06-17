import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeCollect extends StatefulWidget {
  @override
  _MeCollectState createState() => _MeCollectState();
}

class _MeCollectState extends State<MeCollect> with WidgetsBindingObserver {
  var width;
  var top;
  var types = [
    {'type': '1', 'name': '图片与视频'},
    {'type': '1', 'name': '链接'},
    {'type': '1', 'name': '文件'},
    {'type': '1', 'name': '音乐'},
    {'type': '1', 'name': '聊天记录　'},
    {'type': '1', 'name': '语音'},
    {'type': '1', 'name': '笔记'},
    {'type': '1', 'name': '位置'},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('收藏'),
        actions: <Widget>[IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {})],
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        padding: EdgeInsets.only(
          left: ScreenUtil.getInstance().setWidth(16.0),
          right: ScreenUtil.getInstance().setWidth(16.0),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(20.0),
                  bottom: ScreenUtil.getInstance().setHeight(16.0)),
              height: ScreenUtil.getInstance().setHeight(56.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Color(0xffD9D9DB), width: ScreenUtil.getInstance().setWidth(1)),
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(6.0)))),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.search,
                              size: ScreenUtil.getInstance().setWidth(44.0),
                              color: Color(0xffC5C5C5)),
                          Text(
                            '搜索',
                            style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(26.0),
                                color: Color(0xffC5C5C5)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: types.map<Widget>((item) {
                  return Container(
                    width: ScreenUtil.getInstance().setWidth((item['name'].length) * 27.0 + 54),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: ScreenUtil.getInstance().setWidth(1),
                          height: ScreenUtil.getInstance().setHeight(24),
                          color: Colors.white,
                        ),
                        Text(
                          item['name'],
                          style: TextStyle(
                              fontSize: ScreenUtil.getInstance().setSp(26),
                              color: Color(0xff02AC00)),
                        ),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(1),
                          height: ScreenUtil.getInstance().setHeight(24),
                          color: Color(0xffDADADA),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
