import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './chat_detail.dart';

class MessageDetail extends StatefulWidget {
  final props;

  MessageDetail(this.props);

  @override
  _MessageDetailState createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  List list = [
    {'time': '21:11'},
    {
      'to': 'Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 '
          'Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。'
    },
    {'to': '快跑'},
    {'from': '加班'},
    {
      'from': 'Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 '
          'Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。'
    },
    {'time': '21:11'},
    {'to': '快跑'},
    {'to': '下雨了'},
    {'time': '21:11'},
    {'to': '快跑'},
    {'from': '加班'},
    {'time': '21:11'},
    {'to': '快跑'},
    {'to': '下雨了'},
    {'time': '21:11'},
    {'to': '快跑'},
    {'from': '加班'},
    {'time': '21:11'},
    {'to': '快跑'},
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.props['name']}'),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            child: Container(
              width: 40,
              child: Icon(
                Icons.more_horiz,
                size: 30,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new ChatDetail()),
              );
            },
          ),
          Container(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height:
                MediaQuery.of(context).size.height - 56 - MediaQuery.of(context).padding.top - ScreenUtil.getInstance().setHeight(100.0),
            color: Color(0xEBEBEB),
            child: ListView(
              padding: EdgeInsets.only(left: 10, right: 10),
              children: list.map<Widget>((item) {
                return item['time'] == null
                    ? Container(
                        margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(28.0)),
                        child: item['from'] == null
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'images/yu.jpg',
                                    width: ScreenUtil.getInstance().setWidth(80.0),
                                    height: ScreenUtil.getInstance().setWidth(80.0),
                                  ),
                                  LimitedBox(
                                    maxWidth: ScreenUtil.getInstance().setWidth(430.0),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil.getInstance().setWidth(20.0),
                                          right: ScreenUtil.getInstance().setWidth(20.0),
                                          top: ScreenUtil.getInstance().setWidth(24.0),
                                          bottom: ScreenUtil.getInstance().setWidth(24.0)),
                                      margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(20.0)),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xffCCCCCC),width: ScreenUtil.getInstance().setWidth(1)),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(6))),
                                      child: Text(item['to']),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  LimitedBox(
                                    maxWidth: ScreenUtil.getInstance().setWidth(430.0),
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: ScreenUtil.getInstance().setWidth(20.0),
                                          right: ScreenUtil.getInstance().setWidth(20.0),
                                          top: ScreenUtil.getInstance().setWidth(24.0),
                                          bottom: ScreenUtil.getInstance().setWidth(24.0)),
                                      margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20.0)),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xff6FB54D),width: ScreenUtil.getInstance().setWidth(1)),
                                          color: Color(0xffA0E75A),
                                          borderRadius: BorderRadius.all(Radius.circular(6))),
                                      child: Text(item['from']),
                                    ),
                                  ),
                                  Image.asset(
                                    'images/li.jpg',
                                    width: ScreenUtil.getInstance().setWidth(80.0),
                                    height: ScreenUtil.getInstance().setWidth(80.0),
                                  )
                                ],
                              ),
                      )
                    : Container(
                        margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(28.0)),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(color: Color(0xffCFCFCF), borderRadius: BorderRadius.all(Radius.circular(8))),
                            width: ScreenUtil.getInstance().setWidth(80.0),
                            height: ScreenUtil.getInstance().setHeight(40.0),
                            child: Center(
                              child: Text(
                                item['time'],
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      );
              }).toList(),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: ScreenUtil.getInstance().setHeight(100.0),
            decoration: BoxDecoration(color: Color(0xffF2F2F4), border: Border(top: BorderSide(color: Color(0xffD5D5D7),width: ScreenUtil.getInstance().setWidth(1)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: ScreenUtil.getInstance().setWidth(56.0),
                  height: ScreenUtil.getInstance().setHeight(56.0),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_voice,
                      size: ScreenUtil.getInstance().setWidth(56.0),
                      color: Color(0xff7F8389),
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil.getInstance().setWidth(378.0),
                  height: ScreenUtil.getInstance().setHeight(72.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDDDDDD),width: ScreenUtil.getInstance().setWidth(1)),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: null,
                ),
                Container(
                  width: ScreenUtil.getInstance().setWidth(56.0),
                  height: ScreenUtil.getInstance().setHeight(56.0),
                  child: Center(
                    child: Icon(
                      Icons.insert_emoticon,
                      size: ScreenUtil.getInstance().setWidth(56.0),
                      color: Color(0xff7F8389),
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil.getInstance().setWidth(56.0),
                  height: ScreenUtil.getInstance().setHeight(56.0),
                  child: Center(
                    child: Icon(
                      Icons.add_circle_outline,
                      size: ScreenUtil.getInstance().setWidth(56.0),
                      color: Color(0xff7F8389),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
