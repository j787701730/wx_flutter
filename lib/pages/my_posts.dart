import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'my_posts_detail.dart';

class MyPosts extends StatefulWidget {
  @override
  _MyPostsState createState() => _MyPostsState();
}

class _MyPostsState extends State<MyPosts> with WidgetsBindingObserver {
  var width;
  var top;
  bool show = false;
  var colorBg = Colors.white;
  ScrollController _controller = new ScrollController();

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    return <Widget>[
      SliverAppBar(
        title: Text(show ? '相册' : ''),
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
        expandedHeight: MediaQuery.of(context).size.width -
            MediaQuery.of(context).padding.top +
            ScreenUtil.getInstance().setHeight(128.0),
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
            height: MediaQuery.of(context).size.width -
                MediaQuery.of(context).padding.top +
                ScreenUtil.getInstance().setHeight(128.0),
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
                  bottom: ScreenUtil.getInstance().setWidth(78),
                  right: ScreenUtil.getInstance().setWidth(20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '简单快乐',
                        style: TextStyle(
                            color: Colors.white, fontSize: ScreenUtil.getInstance().setSp(32)),
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(40),
                      ),
                      Container(
                        width: ScreenUtil.getInstance().setWidth(150.0),
                        height: ScreenUtil.getInstance().setHeight(150.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffcccccc),
                                width: ScreenUtil.getInstance().setWidth(1))),
                        child: Image.asset(
                          'images/yu.jpg',
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: ScreenUtil.getInstance().setWidth(46),
                          right: ScreenUtil.getInstance().setWidth(20)),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        '佛为心道为骨儒为表大度看世界。技在手能在身思在脑从容过生活。',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: ScreenUtil.getInstance().setSp(26), color: Color(0xff6F6D68)),
                      ),
                    ))
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
      'time': '今天',
      'list': [
        {
          'type': 'share',
          'images': 'images/yu.jpg',
          'desc': '我要小姐姐! 我要小姐姐'
              '!我要小姐姐! 我要小姐姐!我要小姐姐! 我要小姐姐'
        }
      ]
    },
    {
      'time': '2019-05-15 20:18:04',
      'list': [
        {
          'type': 'share',
          'images': 'images/yu.jpg',
          'desc': '我要小姐姐! 我要小姐姐'
              '!我要小姐姐! 我要小姐姐!我要小姐姐! 我要小姐姐'
        }
      ]
    },
    {
      'time': '2019-05-14 20:18:04',
      'list': [
        {
          'type': 'self',
          'images': [
            'images/yu.jpg',
            'images/pan.jpg',
            'images/wu.jpg',
            'images/li.jpg',
            'images/chen.jpg',
            'images/pan.jpg',
            'images/chen.jpg',
            'images/li.jpg',
            'images/chen.jpg',
          ],
          'desc': '我要小姐姐! 我要小姐姐'
        },
        {
          'type': 'self',
          'images': [
            'images/wu.jpg',
          ],
          'desc': '我要小姐姐! 我要小姐姐'
        }
      ]
    },
    {
      'time': '2019-05-13 20:18:04',
      'list': [
        {
          'type': 'self',
          'images': [
            'images/yu.jpg',
            'images/pan.jpg',
          ],
          'desc': '我要小姐姐! 我要小姐姐'
        },
        {
          'type': 'self',
          'images': [
            'images/yu.jpg',
            'images/pan.jpg',
            'images/wu.jpg',
          ],
          'desc': '我要小姐姐! 我要小姐姐'
        }
      ]
    },
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
              padding: EdgeInsets.only(
                  top: ScreenUtil.getInstance().setWidth(18.0),
                  left: ScreenUtil.getInstance().setWidth(18.0)),
              children: arr.map<Widget>((item) {
                return Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      item['time'] == '今天'
                          ? Container(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '今天',
                                    style:
                                        TextStyle(fontSize: ScreenUtil.getInstance().setWidth(54)),
                                  )
                                ],
                              ),
                              width: ScreenUtil.getInstance().setWidth(130.0),
//                            height: ScreenUtil.getInstance().setHeight(84.0),
                            )
                          : Container(
                              child: RichText(
                                  text: TextSpan(
                                      text: '${DateTime.parse(item['time']).day}',
                                      style: TextStyle(
                                        fontSize: ScreenUtil.getInstance().setSp(60),
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                    TextSpan(
                                      text: '${DateTime.parse(item['time']).month}月',
                                      style:
                                          TextStyle(fontSize: ScreenUtil.getInstance().setSp(36)),
                                    )
                                  ])),
                              width: ScreenUtil.getInstance().setWidth(130.0),
//                            height: ScreenUtil.getInstance().setHeight(84.0),
                            ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: ScreenUtil.getInstance().setWidth(18.0),
                              right: ScreenUtil.getInstance().setWidth(18.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              item['time'] == '今天'
                                  ? GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                height: ScreenUtil.getInstance().setHeight(301),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      height:
                                                          ScreenUtil.getInstance().setHeight(96),
                                                      child: Center(
                                                        child: Text(
                                                          '拍摄',
                                                          style: TextStyle(
                                                              fontSize: ScreenUtil.getInstance()
                                                                  .setSp(32)),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: ScreenUtil.getInstance().setHeight(1),
                                                      color: Color(0xffD2D2D3),
                                                    ),
                                                    Container(
                                                      height:
                                                          ScreenUtil.getInstance().setHeight(96),
                                                      child: Center(
                                                        child: Text(
                                                          '从手机相册选择',
                                                          style: TextStyle(
                                                              fontSize: ScreenUtil.getInstance()
                                                                  .setSp(32)),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height:
                                                          ScreenUtil.getInstance().setHeight(12),
                                                      color: Color(0xffD2D2D3),
                                                    ),
                                                    Container(
                                                      height:
                                                          ScreenUtil.getInstance().setHeight(96),
                                                      child: Center(
                                                        child: Text(
                                                          '取消',
                                                          style: TextStyle(
                                                              fontSize: ScreenUtil.getInstance()
                                                                  .setSp(32)),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            bottom: ScreenUtil.getInstance().setWidth(10)),
                                        width: ScreenUtil.getInstance().setWidth(150),
                                        height: ScreenUtil.getInstance().setWidth(150),
                                        color: Color(0xffD7D7D7),
                                        child: Center(
                                          child: Icon(
                                            Icons.camera_alt,
                                            size: ScreenUtil.getInstance().setSp(94),
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Placeholder(
                                      fallbackWidth: 0,
                                      fallbackHeight: 1,
                                      color: Colors.transparent,
                                    ),
                              Column(
                                children: item['list'].map<Widget>((list) {
                                  return list['type'] == 'self'
                                      ? GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new MyPostsDetail(list, item['time'])),
                                            );
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: ScreenUtil.getInstance().setWidth(10)),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  width: ScreenUtil.getInstance().setWidth(150),
                                                  height: ScreenUtil.getInstance().setWidth(150),
                                                  child: list['images'].length == 0
                                                      ? Text(list['desc'])
                                                      : list['images'].length == 1
                                                          ? Image.asset(list['images'][0])
                                                          : list['images'].length == 2
                                                              ? Row(
                                                                  children: <Widget>[
                                                                    Container(
                                                                      padding: EdgeInsets.only(
                                                                          right: ScreenUtil
                                                                                  .getInstance()
                                                                              .setWidth(2)),
                                                                      child: Image.asset(
                                                                        list['images'][0],
                                                                        fit: BoxFit.cover,
                                                                      ),
                                                                      width:
                                                                          ScreenUtil.getInstance()
                                                                              .setWidth(73),
                                                                      height:
                                                                          ScreenUtil.getInstance()
                                                                              .setWidth(150),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          ScreenUtil.getInstance()
                                                                              .setWidth(73),
                                                                      height:
                                                                          ScreenUtil.getInstance()
                                                                              .setWidth(150),
                                                                      padding: EdgeInsets.only(
                                                                          left: ScreenUtil
                                                                                  .getInstance()
                                                                              .setWidth(2)),
                                                                      child: Image.asset(
                                                                        list['images'][1],
                                                                        fit: BoxFit.cover,
                                                                      ),
                                                                    )
                                                                  ],
                                                                )
                                                              : list['images'].length == 3
                                                                  ? Row(
                                                                      children: <Widget>[
                                                                        Column(
                                                                          children: <Widget>[
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  right: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][0],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(150),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          children: <Widget>[
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  left: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2),
                                                                                  bottom: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][1],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                            ),
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  left: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2),
                                                                                  top: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][2],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                            )
                                                                          ],
                                                                        )
                                                                      ],
                                                                    )
                                                                  : Row(
                                                                      children: <Widget>[
                                                                        Column(
                                                                          children: <Widget>[
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  right: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2),
                                                                                  bottom: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][0],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                            ),
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  right: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2),
                                                                                  top: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][2],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Column(
                                                                          children: <Widget>[
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  left: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2),
                                                                                  bottom: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][1],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                            ),
                                                                            Container(
                                                                              padding: EdgeInsets.only(
                                                                                  left: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2),
                                                                                  top: ScreenUtil
                                                                                          .getInstance()
                                                                                      .setWidth(2)),
                                                                              child: Image.asset(
                                                                                list['images'][3],
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                              width: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                              height: ScreenUtil
                                                                                      .getInstance()
                                                                                  .setWidth(73),
                                                                            )
                                                                          ],
                                                                        )
                                                                      ],
                                                                    ),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                  padding: EdgeInsets.only(
                                                    left: ScreenUtil.getInstance().setWidth(10),
                                                    right: ScreenUtil.getInstance().setWidth(10),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Container(
                                                        child: Text(
                                                          list['desc'],
                                                          maxLines: 3,
                                                          overflow: TextOverflow.ellipsis,
                                                          style: TextStyle(
                                                              fontSize: ScreenUtil.getInstance()
                                                                  .setSp(30)),
                                                        ),
                                                        height:
                                                            ScreenUtil.getInstance().setHeight(120),
                                                      ),
                                                      list['images'].length > 1
                                                          ? Text(
                                                              '共${list['images'].length}张',
                                                              style: TextStyle(
                                                                  fontSize: ScreenUtil.getInstance()
                                                                      .setSp(20),
                                                                  color: Color(0xff818181)),
                                                            )
                                                          : Placeholder(
                                                              fallbackWidth: 0,
                                                              fallbackHeight: 0,
                                                              color: Colors.transparent,
                                                            )
                                                    ],
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new MyPostsDetail(list, item['time'])),
                                            );
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: ScreenUtil.getInstance().setWidth(10)),
                                            padding: EdgeInsets.all(
                                                ScreenUtil.getInstance().setWidth(10)),
                                            color: Color(0xffF4F4F6),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Image.asset(
                                                  list['images'],
                                                  width: ScreenUtil.getInstance().setWidth(80),
                                                  height: ScreenUtil.getInstance().setWidth(80),
                                                ),
                                                Expanded(
                                                    child: Container(
                                                  child: Text(
                                                    list['desc'],
                                                    maxLines: 2,
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontSize:
                                                            ScreenUtil.getInstance().setSp(30)),
                                                  ),
                                                  padding: EdgeInsets.only(
                                                    left: ScreenUtil.getInstance().setWidth(10),
                                                    right: ScreenUtil.getInstance().setWidth(10),
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        );
                                }).toList(),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 60),
                );
              }).toList(),
            ),
          )),
    );
  }
}
