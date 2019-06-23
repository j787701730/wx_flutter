import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Conpany extends StatefulWidget {
  final title;

  Conpany(this.title);

  @override
  _ConpanyState createState() => _ConpanyState();
}

class _ConpanyState extends State<Conpany> with WidgetsBindingObserver {
  var width;
  var top;
  List list = [
    {
      'type': 'C',
      'list': [
        {'id': '1', 'name': '超级表单', 'icon': 'c2'},
      ]
    },
    {
      'type': 'D',
      'list': [
        {'id': '1', 'name': '电话会议', 'icon': 'c3'},
      ]
    },
    {
      'type': 'G',
      'list': [
        {'id': '1', 'name': '工作日志', 'icon': 'c4'},
      ]
    },
    {
      'type': 'H',
      'list': [
        {'id': '1', 'name': '会议助手', 'icon': 'c5'},
      ]
    },
    {
      'type': 'K',
      'list': [
        {'id': '1', 'name': '考勤打卡', 'icon': 'c6'},
      ]
    },
    {
      'type': 'M',
      'list': [
        {'id': '1', 'name': '名片管理', 'icon': 'c7'},
      ]
    },
    {
      'type': 'N',
      'list': [
        {'id': '1', 'name': '拿快递', 'icon': 'c8'},
      ]
    },
    {
      'type': 'Q',
      'list': [
        {'id': '1', 'name': '企业滴滴', 'icon': 'c9'},
        {'id': '1', 'name': '企业活动', 'icon': 'c10'},
        {'id': '1', 'name': '企业小助手', 'icon': 'c11'},
        {'id': '1', 'name': '企业用车', 'icon': 'c12'},
        {'id': '1', 'name': '请假出差', 'icon': 'c13'},
      ]
    },
    {
      'type': 'R',
      'list': [
        {'id': '1', 'name': '人事管理', 'icon': 'c14'},
        {'id': '1', 'name': '任务分派', 'icon': 'c15'},
      ]
    },
    {
      'type': 'S',
      'list': [
        {'id': '1', 'name': '审批批示', 'icon': 'c16'},
      ]
    },
    {
      'type': 'T',
      'list': [
        {'id': '1', 'name': '同事群聊', 'icon': 'c17'},
        {'id': '1', 'name': '同事社区', 'icon': 'c18'},
        {'id': '1', 'name': '通讯录', 'icon': 'c19'},
      ]
    },
    {
      'type': 'W',
      'list': [
        {'id': '1', 'name': '问卷投票', 'icon': 'c20'},
        {'id': '1', 'name': '我的代办', 'icon': 'c21'},
      ]
    },
    {
      'type': 'X',
      'list': [
        {'id': '1', 'name': '新闻公告', 'icon': 'c22'},
      ]
    },
    {
      'type': 'Y',
      'list': [
        {'id': '1', 'name': '移动报销', 'icon': 'c23'},
        {'id': '1', 'name': '移动CRM', 'icon': 'c24'},
        {'id': '1', 'name': '移动外勤', 'icon': 'c25'},
      ]
    },
    {
      'type': 'Z',
      'list': [
        {'id': '1', 'name': '招聘简历', 'icon': 'c26'},
        {'id': '1', 'name': '知识百科', 'icon': 'c27'},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.title}'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(20),
                top: ScreenUtil.getInstance().setWidth(20),
                bottom: ScreenUtil.getInstance().setWidth(20),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    width: ScreenUtil.getInstance().setWidth(72),
                    height: ScreenUtil.getInstance().setHeight(72),
                    margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20)),
                    child: Image.asset('images/c1.png'),
                  ),
                  Text(
                    '企业会话',
                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                  )
                ],
              ),
            ),
            Column(
              children: list.map<Widget>((item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: width,
                      color: Color(0xffF0F0F6),
                      padding: EdgeInsets.only(
                        left: ScreenUtil.getInstance().setWidth(20),
                        top: ScreenUtil.getInstance().setWidth(10),
                        bottom: ScreenUtil.getInstance().setWidth(10),
                      ),
                      child: Text(item['type']),
                    ),
                    Column(
                      children: item['list'].map<Widget>((list) {
                        return Container(
                          padding: EdgeInsets.only(
                            left: ScreenUtil.getInstance().setWidth(20),
                            top: ScreenUtil.getInstance().setWidth(20),
                            bottom: ScreenUtil.getInstance().setWidth(20),
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: item['list'].length > 1 && item['list'].indexOf(list) != item['list'].length - 1
                                          ? Color(0xffD9D9D9)
                                          : Colors.white,width: ScreenUtil.getInstance().setWidth(1)))),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: ScreenUtil.getInstance().setWidth(72),
                                height: ScreenUtil.getInstance().setHeight(72),
                                margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(20)),
                                child: Image.asset('images/${list['icon']}.png'),
                              ),
                              Text(list['name'], style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)))
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
