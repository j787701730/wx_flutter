import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Moments extends StatefulWidget {
  @override
  _MomentsState createState() => _MomentsState();
}

class _MomentsState extends State<Moments> with WidgetsBindingObserver {
  var width;
  var top;
  bool show = false;
  var colorBg = Colors.white;
  ScrollController _controller = new ScrollController();

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return <Widget>[
      SliverAppBar(
        title: Text(show ? '朋友圈' : ''),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.camera_alt,
            ),
            onPressed: () {},
          )
        ],
        //标题居中
        centerTitle: true,
        //展开高度200
        expandedHeight: MediaQuery.of(context).size.width - MediaQuery.of(context).padding.top + ScreenUtil.getInstance().setHeight(48.0),
        //不随着滑动隐藏标题
        floating: true,
        //固定在顶部
        pinned: true,
        backgroundColor: show ? null : Colors.white,
        flexibleSpace: FlexibleSpaceBar(
//          centerTitle: true,
//          title: Text('我是一个FlexibleSpaceBar'),
          collapseMode: CollapseMode.pin,
          background: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.width - MediaQuery.of(context).padding.top + ScreenUtil.getInstance().setHeight(48.0),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "images/yu.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  bottom: 0,
                  right: ScreenUtil.getInstance().setWidth(20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '简单快乐',
                        style: TextStyle(color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(32)),
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(40),
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(150.0),
                        height: ScreenUtil.getInstance().setHeight(150.0),
                        decoration:
                            BoxDecoration(border: Border.all(color: Color(0xffcccccc), width: ScreenUtil.getInstance().setWidth(1))),
                        child: Image.asset(
                          'images/yu.jpg',
                        ),
                      )
                    ],
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
  void didChangeDependencies() {
    WidgetsBinding.instance.addPostFrameCallback(_position);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(oldWidget) {
    WidgetsBinding.instance.addPostFrameCallback(_position);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List arr = [
    {
      'pic': 'yu',
      'name': '简单快乐',
      'msg': '我要小姐姐! 我要小姐姐',
    },
    {'pic': 'yu', 'name': '简单快乐', 'msg': '我要小姐姐'},
    {'pic': 'yu', 'name': '简单快乐', 'msg': '我要小姐姐'},
    {'pic': 'yu', 'name': '简单快乐', 'msg': '我要小姐姐'},
    {'pic': 'yu', 'name': '简单快乐', 'msg': '我要小姐姐'},
  ];

  _position(Duration timeStamp) {
    RenderObject renderObject = context.findRenderObject();
    //获取元素大小
    Size size = renderObject.paintBounds.size;
    var vector3 = renderObject.getTransformTo(null)?.getTranslation();
    //获取元素位置
//      var vector3 = renderObject.getTransformTo(null)?.getTranslation();
//      CommonUtils.showChooseDialog(context, size, vector3);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + ScreenUtil.getInstance().setHeight(48.0);
    return Scaffold(
      body: NestedScrollView(
          controller: _controller,
          headerSliverBuilder: _sliverBuilder,
          body: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(18.0), left: ScreenUtil.getInstance().setWidth(18.0)),
              children: arr.map<Widget>((item) {
                return Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/${item['pic']}.jpg'),
                        width: ScreenUtil.getInstance().setWidth(84.0),
                        height: ScreenUtil.getInstance().setHeight(84.0),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: ScreenUtil.getInstance().setWidth(18.0), right: ScreenUtil.getInstance().setWidth(18.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${item['name']}',
                                style: TextStyle(color: Color(0xff576B95), fontSize: ScreenUtil.getInstance().setSp(28.0)),
                              ),
                              Container(
                                height: ScreenUtil.getInstance().setHeight(18.0),
                              ),
                              Text(
                                '${item['msg']}',
                                style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30.0)),
                              ),
                              Container(
                                height: ScreenUtil.getInstance().setHeight(18.0),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          '2分钟前',
                                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Color(0xff737373)),
                                        ),
                                        Container(
                                          width: ScreenUtil.getInstance().setWidth(20.0),
                                        ),
                                        Text(
                                          'UC浏览器',
                                          style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24.0), color: Color(0xff737373)),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.more,
                                      color: Color(0xff97AAD0),
                                      size: ScreenUtil.getInstance().setSp(36.0),
                                    ),
                                    onTapDown: (detail) {
                                      setState(() {});
                                      WidgetsBinding.instance.addPostFrameCallback(_position);
                                    },
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(10.0)),
                                decoration: BoxDecoration(
                                  color: Color(0xffF4F4F6),
                                  border: Border(bottom: BorderSide(color: Color(0xffDDDEDF), width: ScreenUtil.getInstance().setWidth(1))),
                                ),
                                padding: EdgeInsets.only(
                                    left: ScreenUtil.getInstance().setWidth(20.0),
                                    top: ScreenUtil.getInstance().setHeight(10),
                                    right: ScreenUtil.getInstance().setWidth(20.0),
                                    bottom: ScreenUtil.getInstance().setHeight(10.0)),
                                child: Wrap(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.favorite_border,
                                            size: ScreenUtil.getInstance().setSp(24.0),
                                            color: Color(0xff7081A5),
                                          ),
                                          Container(
                                            width: ScreenUtil.getInstance().setWidth(12.0),
                                          ),
                                          Text(
                                            '简单快乐',
                                            style: TextStyle(color: Color(0xff7081A5), fontSize: ScreenUtil.getInstance().setSp(26.0)),
                                          ),
                                          Container(
                                            width: ScreenUtil.getInstance().setWidth(12.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF4F4F6),
                                ),
                                padding: EdgeInsets.only(
                                    left: ScreenUtil.getInstance().setWidth(20.0),
                                    top: ScreenUtil.getInstance().setHeight(10),
                                    right: ScreenUtil.getInstance().setWidth(20.0),
                                    bottom: ScreenUtil.getInstance().setHeight(10.0)),
                                child: Wrap(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '简单快乐',
                                            style: TextStyle(color: Color(0xff7081A5), fontSize: ScreenUtil.getInstance().setSp(26.0)),
                                          ),
                                          Text('：我要小姐姐')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
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
