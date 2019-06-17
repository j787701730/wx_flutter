import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTabName extends StatefulWidget {
  final tabName;

  AddTabName(this.tabName);

  @override
  _AddTabNameState createState() => _AddTabNameState(this.tabName);
}

class _AddTabNameState extends State<AddTabName> with WidgetsBindingObserver {
  String tabName = '';
  var color = 0xffffffff;

  _AddTabNameState(this.tabName);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Container(
            child: Center(
              child: Text('取消'),
            ),
          ),
          onTap: () {
            Navigator.pop(context, tabName);
          },
        ),
        title: Text('设置标签名字'),
        actions: <Widget>[
          InkWell(
            child: Container(
              child: Center(
                child: Text(
                  '确定',
                  style: TextStyle(color: Color(color)),
                ),
              ),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(10),
                  right: ScreenUtil.getInstance().setWidth(10)),
            ),
            onTap: () {
              Navigator.pop(context, tabName);
            },
          )
        ],
      ),
      body: Container(
        color: Color(0xffEFEFF5),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(30)),
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(16.0),
                  right: ScreenUtil.getInstance().setWidth(16.0),
                  top: ScreenUtil.getInstance().setHeight(16.0),
                  bottom: ScreenUtil.getInstance().setHeight(16.0)),
//              height: ScreenUtil.getInstance().setHeight(56.0),
              decoration: BoxDecoration(
                color: Colors.white,
//                  border: Border.all(
//                      color: Color(0xffD9D9DB), width: ScreenUtil.getInstance().setWidth(1)),
//                  borderRadius:
//                      BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(6.0)))
              ),
              child: TextField(
                controller: TextEditingController.fromValue(TextEditingValue(
                    // 设置内容
                    text: '$tabName',
                    selection: TextSelection.fromPosition(
                        TextPosition(affinity: TextAffinity.downstream, offset: '$tabName'.length))
                    // 保持光标在最后
                    )),
                onChanged: (String str) {
                  //输入监听
                  setState(() {
                    tabName = str;
                  });
                },
                autofocus: true,
                decoration: InputDecoration(
                  hintText: '例如家人、朋友',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
