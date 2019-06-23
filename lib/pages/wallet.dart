import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'balance.dart';
import 'money.dart';
import 'cards.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> with WidgetsBindingObserver {
  var width;
  var top;
  bool show = false;
  var colorBg = Colors.white;
  ScrollController _controller = new ScrollController();

  List services = [
    {
      'type': '腾讯服务',
      'list': [
        {'id': '', 'name': '信用卡还款', 'image': 'b1'},
        {'id': '', 'name': '微粒贷借钱', 'image': 'b2'},
        {'id': '', 'name': '手机充值', 'image': 'b3'},
        {'id': '', 'name': '理财通', 'image': 'b4'},
        {'id': '', 'name': '生活缴费', 'image': 'b5'},
        {'id': '', 'name': 'Q币充值', 'image': 'b6'},
        {'id': '', 'name': '城市服务', 'image': 'b7'},
        {'id': '', 'name': '腾讯公益', 'image': 'b8'},
        {'id': '', 'name': '保险服务', 'image': 'b9'},
      ]
    },
    {
      'type': '第三方服务',
      'list': [
        {'id': '', 'name': '火车票机票', 'image': 'b10'},
        {'id': '', 'name': '滴滴出行', 'image': 'b11'},
        {'id': '', 'name': '京东购物', 'image': 'b12'},
        {'id': '', 'name': '美团外卖', 'image': 'b13'},
        {'id': '', 'name': '电影演出赛事', 'image': 'b14'},
        {'id': '', 'name': '吃喝玩乐', 'image': 'b15'},
        {'id': '', 'name': '酒店', 'image': 'b16'},
        {'id': '', 'name': '拼多多', 'image': 'b17'},
        {'id': '', 'name': '蘑菇街女装', 'image': 'b18'},
        {'id': '', 'name': '唯品会', 'image': 'b19'},
        {'id': '', 'name': '转转二手', 'image': 'b20'},
        {'id': '', 'name': '贝壳找房', 'image': 'b21'},
      ]
    }
  ];

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return <Widget>[
      SliverAppBar(
        title: Text('钱包'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.border_all,
            ),
            onPressed: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => new ChatDetail()),
//            );
            },
          )
        ],
        //标题居中
        centerTitle: true,
        backgroundColor: Color(0xff686F78),
        //展开高度200
        expandedHeight: ScreenUtil.getInstance().setHeight(250.0),
        //不随着滑动隐藏标题
        floating: false,
        //固定在顶部
        pinned: true,
//        backgroundColor: show ? null : Colors.white,
        flexibleSpace: FlexibleSpaceBar(
//          centerTitle: true,
//          title: Text('我是一个FlexibleSpaceBar'),
          collapseMode: CollapseMode.none,
          background: Container(
            color: Color(0xff686F78),
            padding: EdgeInsets.only(top: top),
//            height: ScreenUtil.getInstance().setHeight(230.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Money()),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.crop_free,
                            color: Colors.white,
                            size: ScreenUtil.getInstance().setSp(70.0),
                          ),
                          Text(
                            '收付款',
                            style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(28.0)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Balance()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          color: Colors.white,
                          size: ScreenUtil.getInstance().setSp(70.0),
                        ),
                        Text(
                          '零钱',
                          style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(28.0)),
                        ),
                        Text(
                          '￥222.00',
                          style: TextStyle(color: Color(0xffB4B7BC), fontSize: ScreenUtil.getInstance().setSp(24.0)),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context) => new Cards()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.credit_card,
                          color: Colors.white,
                          size: ScreenUtil.getInstance().setSp(70.0),
                        ),
                        Text(
                          '银行卡',
                          style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(28.0)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      if (width - top < _controller.offset) {
        setState(() {
          show = true;
        });
      } else {
        setState(() {
          show = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      body: NestedScrollView(
          controller: _controller,
          headerSliverBuilder: _sliverBuilder,
          body: Container(
            color: Color(0xffEFEFF5),
            child: ListView(
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(18.0)),
              children: services.map<Widget>((item) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().setWidth(40.0),
                          top: ScreenUtil.getInstance().setHeight(30.0),
                          bottom: ScreenUtil.getInstance().setHeight(30.0),
                        ),
                        width: width,
                        child: Text(
                          item['type'],
                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(22.0)),
                        ),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Color(0xffE0E0E0), width: ScreenUtil.getInstance().setWidth(1))),
                            color: Colors.white),
                      ),
                      Wrap(
                        children: item['list'].map<Widget>((list) {
                          return Container(
                            width: width / 3,
                            padding: EdgeInsets.only(
                              top: ScreenUtil.getInstance().setHeight(40.0),
                              bottom: ScreenUtil.getInstance().setHeight(40.0),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    left: BorderSide(color: Colors.white, width: ScreenUtil.getInstance().setWidth(1)),
                                    bottom: BorderSide(color: Color(0xffE0E0E0), width: ScreenUtil.getInstance().setWidth(1)),
                                    right: (item['list'].indexOf(list) % 3 == 0 || item['list'].indexOf(list) % 3 == 1)
                                        ? BorderSide(color: Color(0xffE0E0E0), width: ScreenUtil.getInstance().setWidth(1))
                                        : BorderSide(color: Colors.white, width: ScreenUtil.getInstance().setWidth(1)))),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  'images/${list['image']}.png',
                                  width: ScreenUtil.getInstance().setWidth(60),
                                  height: ScreenUtil.getInstance().setHeight(60),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: ScreenUtil.getInstance().setHeight(10)
                                  ),
                                  height: ScreenUtil.getInstance().setWidth(30),
                                  child: Text(
                                    list['name'],
                                    style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                );
              }).toList(),
            ),
          )),
    );
  }
}
