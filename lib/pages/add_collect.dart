import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCollect extends StatefulWidget {
  final msg;

  AddCollect(this.msg);

  @override
  _AddCollectState createState() => _AddCollectState(this.msg);
}

class _AddCollectState extends State<AddCollect> with WidgetsBindingObserver {
  var width;
  var top;
  String tabName;

  _AddCollectState(this.tabName);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              if (tabName != '') {
                Navigator.pop(context, {'type': 'note', 'msg': tabName, 'time': '今天'});
              } else {
                Navigator.pop(context, null);
              }
            }),
        title: Text('新建收藏'),
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
//              margin: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(30)),
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
                maxLines: 20,
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
//                  hintText: '例如家人、朋友',
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
