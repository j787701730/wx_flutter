import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'add_collect.dart';

class MeCollect extends StatefulWidget {
  @override
  _MeCollectState createState() => _MeCollectState();
}

class _MeCollectState extends State<MeCollect> with WidgetsBindingObserver {
  var width;
  var top;
  var types = [
    {'type': '1', 'name': '图片与视频'},
    {'type': '0', 'name': ''},
    {'type': '1', 'name': '链接'},
    {'type': '0', 'name': ''},
    {'type': '1', 'name': '文件'},
    {'type': '0', 'name': ''},
    {'type': '1', 'name': '音乐'},
    {'type': '1', 'name': '聊天记录　'},
    {'type': '0', 'name': ''},
    {'type': '1', 'name': '语音'},
    {'type': '0', 'name': ''},
    {'type': '1', 'name': '笔记'},
    {'type': '0', 'name': ''},
    {'type': '1', 'name': '位置'},
  ];

  List collects = [
    {'type': 'image', 'image': 'yu', 'name': 'xx小姐姐', 'time': '1小时前'},
    {'type': 'image', 'image': 'li', 'name': 'xx小姐姐', 'time': '1小时前'},
    {'type': 'article', 'image': 'yu', 'name': 'xx小姐姐', 'title': '论十大小姐姐', 'time': '2019/5/14'},
    {'type': 'article', 'image': 'yu', 'name': 'xx小姐姐', 'title': '评十大小姐姐', 'time': '2019/5/13'},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('收藏'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new AddCollect('')),
                ).then((val) {
                  if (val != null) {
                    List temp = collects;
                    temp.insert(0, val);
                    setState(() {
                      collects = temp;
                    });
                  }
                });
              })
        ],
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        padding: EdgeInsets.only(
          left: ScreenUtil.getInstance().setWidth(16.0),
          right: ScreenUtil.getInstance().setWidth(16.0),
        ),
        child: ListView(
          padding: EdgeInsets.only(bottom: ScreenUtil.getInstance().setWidth(20)),
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
              padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setHeight(80),
                  left: ScreenUtil.getInstance().setHeight(30),
                  right: ScreenUtil.getInstance().setHeight(30),
                  bottom: ScreenUtil.getInstance().setHeight(80)),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: types.map<Widget>((item) {
                  return item['type'] == '0'
                      ? Container(
                          width: ScreenUtil.getInstance().setWidth(1),
                          height: ScreenUtil.getInstance().setHeight(24),
                          color: Color(0xffDADADA),
                          margin: EdgeInsets.only(
                              bottom: ScreenUtil.getInstance()
                                  .setHeight(types.indexOf(item) < 7 ? 90 : 0)),
                        )
                      : Container(
                          margin: EdgeInsets.only(
                              bottom: ScreenUtil.getInstance()
                                  .setHeight(types.indexOf(item) < 7 ? 90 : 0)),
                          width:
                              ScreenUtil.getInstance().setWidth((item['name'].length) * 27.0 + 54),
                          child: Text(
                            item['name'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(26),
                                color: Color(0xff02AC00)),
                          ),
                        );
                }).toList(),
              ),
            ),
            Column(
              children: collects.map<Widget>((item) {
                if (item['type'] == 'image') {
                  return Container(
                    margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20)),
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setHeight(40),
                      right: ScreenUtil.getInstance().setHeight(40),
                      top: ScreenUtil.getInstance().setHeight(40),
                      bottom: ScreenUtil.getInstance().setHeight(40),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'images/${item['image']}.jpg',
                          width: ScreenUtil.getInstance().setWidth(180),
                          height: ScreenUtil.getInstance().setHeight(180),
                          fit: BoxFit.fitWidth,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
                          child: Row(
                            children: <Widget>[
                              Text(
                                item['name'],
                                style: TextStyle(
                                    color: Color(0xffA9A9A9),
                                    fontSize: ScreenUtil.getInstance().setSp(22)),
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20),
                              ),
                              Text(
                                item['time'],
                                style: TextStyle(
                                    color: Color(0xffA9A9A9),
                                    fontSize: ScreenUtil.getInstance().setSp(22)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                } else if (item['type'] == 'article') {
                  return Container(
                    margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20)),
                    padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setHeight(40),
                      right: ScreenUtil.getInstance().setHeight(40),
                      top: ScreenUtil.getInstance().setHeight(40),
                      bottom: ScreenUtil.getInstance().setHeight(40),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'images/${item['image']}.jpg',
                                width: ScreenUtil.getInstance().setWidth(100),
                                height: ScreenUtil.getInstance().setHeight(100),
                                fit: BoxFit.fitWidth,
                              ),
                              margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20)),
                            ),
                            Expanded(
                                child: Text(
                              item['title'],
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: ScreenUtil.getInstance().setSp(32)),
                            ))
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
                          child: Row(
                            children: <Widget>[
                              Text(
                                item['name'],
                                style: TextStyle(
                                    color: Color(0xffA9A9A9),
                                    fontSize: ScreenUtil.getInstance().setSp(22)),
                              ),
                              Container(
                                width: ScreenUtil.getInstance().setWidth(20),
                              ),
                              Text(
                                item['time'],
                                style: TextStyle(
                                    color: Color(0xffA9A9A9),
                                    fontSize: ScreenUtil.getInstance().setSp(22)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                } else if (item['type'] == 'note') {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new AddCollect(item['msg'])),
                      ).then((val) {
                        List temp = collects;
                        temp[temp.indexOf(item)]['msg'] = val['msg'];
                        temp[temp.indexOf(item)]['time'] = val['time'];
                        setState(() {
                          collects = temp;
                        });
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20)),
                      padding: EdgeInsets.only(
                        left: ScreenUtil.getInstance().setHeight(40),
                        right: ScreenUtil.getInstance().setHeight(40),
                        top: ScreenUtil.getInstance().setHeight(40),
                        bottom: ScreenUtil.getInstance().setHeight(40),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(item['msg'],
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: ScreenUtil.getInstance().setSp(28))),
                          Container(
                            padding: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(30)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '笔记',
                                  style: TextStyle(
                                      color: Color(0xffA9A9A9),
                                      fontSize: ScreenUtil.getInstance().setSp(22)),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(1),
                                  height: ScreenUtil.getInstance().setHeight(22),
                                  margin: EdgeInsets.only(
                                    left: ScreenUtil.getInstance().setWidth(15),
                                    right: ScreenUtil.getInstance().setWidth(15),
                                  ),
                                  color: Color(0xffA9A9A9),
                                ),
                                Text(
                                  '鱼小鱼',
                                  style: TextStyle(
                                      color: Color(0xffA9A9A9),
                                      fontSize: ScreenUtil.getInstance().setSp(22)),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(20),
                                ),
                                Text(
                                  item['time'],
                                  style: TextStyle(
                                      color: Color(0xffA9A9A9),
                                      fontSize: ScreenUtil.getInstance().setSp(22)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
