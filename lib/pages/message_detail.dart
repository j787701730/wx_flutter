import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './chat_detail.dart';
import 'dart:async';

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

  ScrollController _controller = new ScrollController();
  String tabName = '';
  FocusNode _contentFocusNode = FocusNode();
  bool isKeyBroad = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _contentFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
//    Timer(Duration(milliseconds: 150), () => _controller.jumpTo(_controller.position.maxScrollExtent));
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.props['name']}'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new ChatDetail()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _contentFocusNode.unfocus();
              },
              child: Container(
                height: MediaQuery.of(context).size.height -
                    56 -
                    MediaQuery.of(context).padding.top -
                    ScreenUtil.getInstance().setHeight(100.0),
                color: Color(0xEBEBEB),
                child: ListView(
                  reverse: true,
                  controller: _controller,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  children: list.reversed.map<Widget>((item) {
                    return item['time'] == null
                        ? Container(
                            margin:
                                EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(28.0)),
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
                                          margin: EdgeInsets.only(
                                              left: ScreenUtil.getInstance().setWidth(20.0)),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xffCCCCCC),
                                                  width: ScreenUtil.getInstance().setWidth(1)),
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
                                          margin: EdgeInsets.only(
                                              right: ScreenUtil.getInstance().setWidth(20.0)),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xff6FB54D),
                                                  width: ScreenUtil.getInstance().setWidth(1)),
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
                            margin:
                                EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(28.0)),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffCFCFCF),
                                    borderRadius: BorderRadius.all(Radius.circular(8))),
                                width: ScreenUtil.getInstance().setWidth(80.0),
                                height: ScreenUtil.getInstance().setHeight(40.0),
                                child: Center(
                                  child: Text(
                                    item['time'],
                                    style: TextStyle(
                                        fontSize: ScreenUtil.getInstance().setSp(24.0),
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          );
                  }).toList(),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil.getInstance().setHeight(100.0),
              decoration: BoxDecoration(
                  color: Color(0xffF2F2F4),
                  border: Border(
                      top: BorderSide(
                          color: Color(0xffD5D5D7), width: ScreenUtil.getInstance().setWidth(1)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isKeyBroad = !isKeyBroad;
                      });
                    },
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(56.0),
                      height: ScreenUtil.getInstance().setHeight(56.0),
                      child: Center(
                        child: Icon(
                          isKeyBroad ? Icons.keyboard_voice : Icons.keyboard,
                          size: ScreenUtil.getInstance().setWidth(56.0),
                          color: Color(0xff7F8389),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: ScreenUtil.getInstance().setWidth(378.0),
                    height: ScreenUtil.getInstance().setHeight(72.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xffDDDDDD), width: ScreenUtil.getInstance().setWidth(1)),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: isKeyBroad
                        ? TextField(
                      focusNode: _contentFocusNode,
                      controller: TextEditingController.fromValue(TextEditingValue(
                        // 设置内容
                          text: '$tabName',
                          selection: TextSelection.fromPosition(TextPosition(
                              affinity: TextAffinity.downstream, offset: '$tabName'.length))
                        // 保持光标在最后
                      )),
                      onChanged: (String str) {
                        //输入监听
                        setState(() {
                          tabName = str;
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                      ),
//                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(36)),
                    )
                        : Container(
                            width: ScreenUtil.getInstance().setWidth(378.0),
                            height: ScreenUtil.getInstance().setHeight(72.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffDDDDDD),
                                    width: ScreenUtil.getInstance().setWidth(1)),
                                borderRadius: BorderRadius.all(Radius.circular(6))),
                            child: Center(
                              child: Text('按住请说话',style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(26),
                                color: Color(0xff7F8389)
                              ),),
                            ),
                          ),
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
      ),
    );
  }
}
