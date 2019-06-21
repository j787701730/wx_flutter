import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPostsDetail extends StatefulWidget {
  final list;
  final time;

  MyPostsDetail(this.list, this.time);

  @override
  _MyPostsDetailState createState() => _MyPostsDetailState();
}

class _MyPostsDetailState extends State<MyPostsDetail> with WidgetsBindingObserver {
  var width;
  var top;
  PageController _pageController;
  int index = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 640, height: 1136)..init(context);
    width = MediaQuery.of(context).size.width;
    top = MediaQuery.of(context).padding.top + 56;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: widget.list['type'] == 'self'
            ? Column(
                children: <Widget>[
                  Text(widget.time),
                  Text('${index}/${widget.list['images'].length}')
                ],
              )
            : Text('详情'),
        actions: <Widget>[IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})],
      ),
      body: widget.list['type'] == 'self'
          ? Container(
              color: Colors.black,
              child: Stack(
                children: <Widget>[
                  PageView(
                    children: widget.list['images'].map<Widget>((item) {
                      return Container(
                        color: Colors.black,
                        child: PageDetail(item),
                      );
                    }).toList(),
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        index = page + 1;
                      });
                    },
                  ),
                  Positioned(
                    bottom: ScreenUtil.getInstance().setHeight(90),
//                    80
                    child: Container(
                      padding: EdgeInsets.only(
                        left: ScreenUtil.getInstance().setWidth(20),
                        top: ScreenUtil.getInstance().setWidth(10),
                        bottom: ScreenUtil.getInstance().setWidth(30),
                        right: ScreenUtil.getInstance().setWidth(10),
                      ),
                      width: width,
                      color: Color(0xcc000000),
                      child: Text(
                        widget.list['desc'],
                        style: TextStyle(color: Colors.white,fontSize: ScreenUtil.getInstance().setSp(26)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: width,
                      color: Color(0xff171717),
                      height: ScreenUtil.getInstance().setHeight(90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(26)),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: ScreenUtil.getInstance().setSp(40),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(6),
                                ),
                                Text(
                                  '赞',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil.getInstance().setSp(26)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: ScreenUtil.getInstance().setWidth(24),
                                    right: ScreenUtil.getInstance().setWidth(24),
                                  ),
                                  color: Color(0xff2E2E2E),
                                  width: ScreenUtil.getInstance().setWidth(1),
                                  height: ScreenUtil.getInstance().setHeight(44),
                                ),
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.white,
                                  size: ScreenUtil.getInstance().setSp(40),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(6),
                                ),
                                Text(
                                  '评论',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil.getInstance().setSp(26)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(26)),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: ScreenUtil.getInstance().setSp(40),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(6),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil.getInstance().setSp(26)),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(10),
                                ),
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Colors.white,
                                  size: ScreenUtil.getInstance().setSp(40),
                                ),
                                Container(
                                  width: ScreenUtil.getInstance().setWidth(6),
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: ScreenUtil.getInstance().setSp(26)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          : Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(24),
                  top: ScreenUtil.getInstance().setWidth(20)),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/yu.jpg'),
                        width: ScreenUtil.getInstance().setWidth(84.0),
                        height: ScreenUtil.getInstance().setHeight(84.0),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: ScreenUtil.getInstance().setWidth(18.0),
                              right: ScreenUtil.getInstance().setWidth(18.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '简单快乐',
                                style: TextStyle(
                                    color: Color(0xff576B95),
                                    fontSize: ScreenUtil.getInstance().setSp(28.0)),
                              ),
                              Container(
                                height: ScreenUtil.getInstance().setHeight(12.0),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(bottom: ScreenUtil.getInstance().setWidth(10)),
                                padding: EdgeInsets.all(ScreenUtil.getInstance().setWidth(10)),
                                color: Color(0xffF4F4F6),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      widget.list['images'],
                                      width: ScreenUtil.getInstance().setWidth(80),
                                      height: ScreenUtil.getInstance().setWidth(80),
                                    ),
                                    Expanded(
                                        child: Container(
                                      child: Text(
                                        widget.list['desc'],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                                      ),
                                      padding: EdgeInsets.only(
                                        left: ScreenUtil.getInstance().setWidth(10),
                                        right: ScreenUtil.getInstance().setWidth(10),
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          '${widget.time}',
                                          style: TextStyle(
                                              fontSize: ScreenUtil.getInstance().setSp(22.0),
                                              color: Color(0xff737373)),
                                        ),
                                        Container(
                                          width: ScreenUtil.getInstance().setWidth(20.0),
                                        ),
                                        GestureDetector(
                                          child: Text(
                                            '删除',
                                            style: TextStyle(
                                                fontSize: ScreenUtil.getInstance().setSp(24.0),
                                                color: Color(0xff576B95)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: ScreenUtil.getInstance().setHeight(60)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: ScreenUtil.getInstance().setWidth(120),
                          height: ScreenUtil.getInstance().setHeight(2),
                          color: Color(0xffE6E6E6),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: ScreenUtil.getInstance().setWidth(10),
                            right: ScreenUtil.getInstance().setWidth(10),
                          ),
                          child: Text(
                            '私密链接不能评论',
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(26)),
                          ),
                        ),
                        Container(
                          width: ScreenUtil.getInstance().setWidth(120),
                          height: ScreenUtil.getInstance().setHeight(2),
                          color: Color(0xffE6E6E6),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

class PageDetail extends StatefulWidget {
  final image;

  PageDetail(this.image);

  @override
  _PageDetailState createState() => _PageDetailState();
}

class _PageDetailState extends State<PageDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        widget.image,
      ),
    );
  }
}
