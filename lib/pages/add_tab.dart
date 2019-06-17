import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'select_contacts.dart';
import '../data.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'add_tab_name.dart';

class AddTab extends StatefulWidget {
  @override
  _AddTabState createState() => _AddTabState();
}

class _AddTabState extends State<AddTab> with WidgetsBindingObserver {
  var width;
  var top;
  var color = 0xff104410;
  List list = [];
  String tabName = '';

  _showSnackBar(flag) {}

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('新建标签'),
        actions: <Widget>[
          InkWell(
            child: Container(
              child: Center(
                child: Text(
                  '完成',
                  style: TextStyle(color: Color(color)),
                ),
              ),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(10),
                  right: ScreenUtil.getInstance().setWidth(10)),
            ),
            onTap: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              color: Color(0xffEFEFF5),
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(30),
                top: ScreenUtil.getInstance().setHeight(36),
                bottom: ScreenUtil.getInstance().setHeight(16),
              ),
              child: Text(
                '标签名字',
                style: TextStyle(
                    color: Color(0xff888888), fontSize: ScreenUtil.getInstance().setSp(26)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new AddTabName(tabName)),
                ).then((value) {
                  setState(() {
                    tabName = value == null ? '' : value;
                  });
                });
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(30),
                  top: ScreenUtil.getInstance().setHeight(26),
                  bottom: ScreenUtil.getInstance().setHeight(26),
                ),
                child: Text(
                  tabName == '' ? '未设置标签名字' : tabName,
                  style: TextStyle(
                      color: Color(0xff888888), fontSize: ScreenUtil.getInstance().setSp(26)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: ScreenUtil.getInstance().setWidth(30),
                top: ScreenUtil.getInstance().setHeight(16),
                bottom: ScreenUtil.getInstance().setHeight(16),
              ),
              color: Color(0xffEFEFF5),
              child: Text(
                '标签成员(${list.length})',
                style: TextStyle(
                    color: Color(0xff888888), fontSize: ScreenUtil.getInstance().setSp(26)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new SelectContacts(list)),
                ).then((value) {
                  setState(() {
                    list = value == null ? [] : value;
                  });
                });
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(30),
                  top: ScreenUtil.getInstance().setHeight(36),
                  bottom: ScreenUtil.getInstance().setHeight(36),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color(0xffCBCBD0),
                            width: ScreenUtil.getInstance().setHeight(1)))),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Color(0xff1AAD19),
                      size: ScreenUtil.getInstance().setSp(34),
                    ),
                    Container(
                      width: ScreenUtil.getInstance().setWidth(20),
                    ),
                    Text(
                      '添加成员',
                      style: TextStyle(
                          color: Color(0xff1AAD19), fontSize: ScreenUtil.getInstance().setSp(30)),
                    )
                  ],
                ),
              ),
            ),
            list.length == 0
                ? Placeholder(
                    fallbackWidth: 0,
                    fallbackHeight: 0,
                    color: Colors.transparent,
                  )
                : Container(
                    child: Column(
                      children: contactsData.map<Widget>((item) {
                        return Column(
                          children: item['items'].map<Widget>((child) {
                            return list.contains(child['id'])
                                ? Slidable(
                                    delegate: new SlidableDrawerDelegate(),
                                    actionExtentRatio: 0.25,
                                    child: InkWell(
                                      onTap: () {
//                  Routes.router.navigateTo(context, 'messageDetail',transition: TransitionType.inFromRight);
//                              Navigator.push(
//                                context,
//                                new MaterialPageRoute(builder: (context) => new SubscriptionAccount()),
//                              );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Color(0xffD7D7D7),
                                                    width: ScreenUtil.getInstance().setWidth(1)))),
                                        padding: EdgeInsets.only(
                                            left: ScreenUtil.getInstance().setWidth(20.0),
                                            top: ScreenUtil.getInstance().setWidth(20.0),
                                            bottom: ScreenUtil.getInstance().setWidth(20.0)),
                                        child: InkWell(
                                          onTap: () {
//                                  Navigator.push(
//                                    context,
//                                    new MaterialPageRoute(
//                                      builder: (context) =>
//                                      new MessageDetail({'name': '${child['name']}'})),
//                                  );
                                          },
                                          child: Row(
//                                  selectList
                                            children: <Widget>[
                                              Image.asset(
                                                '${child['pic']}',
                                                width: ScreenUtil.getInstance().setWidth(72.0),
                                                height: ScreenUtil.getInstance().setHeight(72.0),
                                              ),
                                              Container(
                                                padding: EdgeInsets.only(
                                                    left: ScreenUtil.getInstance().setWidth(20.0)),
                                                child: Text(
                                                  '${child['name']}',
                                                  style: TextStyle(
                                                      fontSize:
                                                          ScreenUtil.getInstance().setSp(30.0)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    secondaryActions: <Widget>[
                                      new IconSlideAction(
                                        caption: '删除',
                                        color: Colors.red,
                                        icon: Icons.delete,
                                        onTap: () {
                                          var temp = list;
                                          temp.remove(child['id']);
                                          setState(() {
                                            list = temp;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                : Placeholder(
                                    fallbackWidth: 0,
                                    fallbackHeight: 0,
                                    color: Colors.transparent,
                                  );
                          }).toList(),
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
