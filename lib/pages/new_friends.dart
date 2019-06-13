import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'add_contacts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NewFriends extends StatefulWidget {
  @override
  _NewFriendsState createState() => _NewFriendsState();
}

class _NewFriendsState extends State<NewFriends> with WidgetsBindingObserver {
  var width;
  var top;
  List friends = [
    {
      'time': '三天前',
      'list': [
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐!我要小姐姐!我要小姐姐!我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
        {'image': 'yu', 'name': '简单快乐', 'desc': '我要小姐姐', 'state': '已过期'},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        title: Text('新的朋友'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(10.0)),
            child: InkWell(
              child: Center(
                child: Text(
                  '添加朋友',
//                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new AddContacts()),
                );
              },
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(16.0),
                  right: ScreenUtil.getInstance().setWidth(16.0),
                  top: ScreenUtil.getInstance().setHeight(16.0),
                  bottom: ScreenUtil.getInstance().setHeight(16.0)),
              height: ScreenUtil.getInstance().setHeight(56.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffD9D9DB)),
                  borderRadius: BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(6.0)))),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.search, size: ScreenUtil.getInstance().setWidth(44.0), color: Color(0xffC5C5C5)),
                          Text(
                            '微信号/手机号',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xffC5C5C5)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: ScreenUtil.getInstance().setHeight(20.0),
                bottom: ScreenUtil.getInstance().setHeight(20.0),
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.phone_android,
                    color: Color(0xff1AAD19),
                    size: ScreenUtil.getInstance().setWidth(72.0),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(20.0)),
                      child: Text(
                        '添加手机联系人',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Color(0xffC5C5C5)),
                      ))
                ],
              ),
            ),
            Column(
              children: friends.map<Widget>((item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        left: ScreenUtil.getInstance().setWidth(20.0),
                        top: ScreenUtil.getInstance().setWidth(10.0),
                        bottom: ScreenUtil.getInstance().setWidth(10.0),
                      ),
                      child: Text(
                        item['time'],
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26.0), color: Color(0xff919196)),
                      ),
                    ),
                    Column(
                      children: item['list'].map<Widget>((list) {
                        return Slidable(
                          delegate: new SlidableDrawerDelegate(),
                          actionExtentRatio: 0.25,
                          child: new Container(
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Color(0xFFD6D6D6), width: 1)),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              child: Container(
                                padding: EdgeInsets.all(
                                  ScreenUtil.getInstance().setWidth(20),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: ScreenUtil.getInstance().setWidth(72.0),
                                      height: ScreenUtil.getInstance().setHeight(72.0),
                                      margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(18.0)),
                                      child: Image.asset('images/${list['image']}.jpg'),
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: new Text(
                                            list['name'],
                                            style: TextStyle(
                                                color: Colors.black, fontSize: ScreenUtil.getInstance().setSp(28.0)),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            list['desc'],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Color(0xff888888),
                                                fontSize: ScreenUtil.getInstance().setSp(26.0)),
                                          ),
                                        ),
                                      ],
                                    )),
                                    Container(
                                      width: ScreenUtil.getInstance().setWidth(22.0 * 3),
                                      child: Text(
                                        list['state'],
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color(0xFFB2B2B2), fontSize: ScreenUtil.getInstance().setSp(20.0)),
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
//                              onTap: () => _showSnackBar('Delete'),
                            ),
                          ],
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
