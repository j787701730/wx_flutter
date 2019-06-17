import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../data.dart';

class SelectContacts extends StatefulWidget {
  final list;

  SelectContacts(this.list);

  @override
  _SelectContactsState createState() => _SelectContactsState(this.list);
}

class _SelectContactsState extends State<SelectContacts> with WidgetsBindingObserver {
  var width;
  var color = 0xffffffff;
  List selectList;

  _SelectContactsState(this.selectList);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Container(
            child: Center(
              child: Text('取消'),
            ),
          ),
          onTap: () {
            Navigator.pop(context, selectList);
          },
        ),
        title: Text('选择联系人'),
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
            onTap: () {
              Navigator.pop(context, selectList);
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setWidth(20.0),
                      right: ScreenUtil.getInstance().setWidth(16.0),
                      top: ScreenUtil.getInstance().setHeight(36.0),
                      bottom: ScreenUtil.getInstance().setHeight(36.0)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                            color: Color(0xffE9EAEC), width: ScreenUtil.getInstance().setWidth(1))),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search,
                          size: ScreenUtil.getInstance().setWidth(44.0), color: Color(0xff8E8E93)),
                      Text(
                        '搜索',
                        style: TextStyle(
                            fontSize: ScreenUtil.getInstance().setSp(26.0),
                            color: Color(0xffBBBAC2)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: ScreenUtil.getInstance().setWidth(30.0),
                      right: ScreenUtil.getInstance().setWidth(16.0),
                      top: ScreenUtil.getInstance().setHeight(40.0),
                      bottom: ScreenUtil.getInstance().setHeight(40.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '从群里导入',
                        style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: ScreenUtil.getInstance().setSp(44),
                        color: Color(0xffC7C7CC),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: contactsData.map<Widget>((item) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: width,
                          color: Color(0xffF0F0F6),
                          padding: EdgeInsets.only(
                              left: ScreenUtil.getInstance().setWidth(20.0),
                              top: ScreenUtil.getInstance().setWidth(10.0),
                              bottom: ScreenUtil.getInstance().setWidth(10.0)),
                          child: Text(
                            '${item['type']}',
                            style: TextStyle(
                                fontSize: ScreenUtil.getInstance().setSp(26.0),
                                color: Color(0xff8B8A90)),
                          ),
                        ),
                        Column(
                          children: item['items'].map<Widget>((child) {
                            return Container(
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
                                  List temp = selectList;
                                  if (selectList.contains(child['id'])) {
                                    temp.remove(child['id']);
                                    setState(() {
                                      selectList = temp;
                                    });
                                  } else {
                                    temp.add(child['id']);
                                    setState(() {
                                      selectList = temp;
                                    });
                                  }
                                },
                                child: Row(
//                                  selectList
                                  children: <Widget>[
                                    Container(
                                      child: Icon(
                                        selectList.contains(child['id'])
                                            ? Icons.check_circle
                                            : Icons.radio_button_unchecked,
                                        size: ScreenUtil.getInstance().setSp(50),
                                        color: selectList.contains(child['id'])
                                            ? Color(0xff1AAD19)
                                            : Color(0xffC9C9C9),
                                      ),
                                      margin: EdgeInsets.only(
                                          right: ScreenUtil.getInstance().setWidth(24)),
                                    ),
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
                                            fontSize: ScreenUtil.getInstance().setSp(30.0)),
                                      ),
                                    )
                                  ],
                                ),
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
          Positioned(
              right: ScreenUtil.getInstance().setWidth(10),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: contactsData.map<Widget>((item) {
                      return Text('${item['type']}');
                    }).toList(),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
