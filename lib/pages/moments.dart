import 'package:flutter/material.dart';

class Moments extends StatefulWidget {
  @override
  _MomentsState createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  var width;
  bool show = false;
  ScrollController _controller = new ScrollController();

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        title: Text(show ? '朋友圈' : ''),
        elevation: 0,
        actions: <Widget>[
          InkWell(
            child: Container(
              width: 40,
              child: Icon(
                Icons.camera_alt,
                size: 30,
              ),
            ),
            onTap: () {
//            Navigator.push(
//              context,
//              new MaterialPageRoute(builder: (context) => new ChatDetail()),
//            );
            },
          )
        ],
        //标题居中
        centerTitle: true,
        //展开高度200
        expandedHeight: MediaQuery.of(context).size.width - MediaQuery.of(context).padding.top + 40,
        //不随着滑动隐藏标题
        floating: true,
        //固定在顶部
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
//          centerTitle: true,
//          title: Text('我是一个FlexibleSpaceBar'),
          collapseMode: CollapseMode.pin,
          background: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.width - MediaQuery.of(context).padding.top + 40,
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
                  right: 10,
                  child: Row(
                    children: <Widget>[
                      Text(
                        '简单快乐',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Container(
                        width: 10,
                      ),
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(border: Border.all(color: Color(0xffcccccc))),
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
      if (width == _controller.offset - 40) {
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

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: NestedScrollView(
          controller: _controller,
          headerSliverBuilder: _sliverBuilder,
          body: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.only(top: 10, left: 10),
              children: arr.map<Widget>((item) {
                return Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/${item['pic']}.jpg'),
                        width: 100,
                        height: 100,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '${item['name']}',
                                style: TextStyle(color: Color(0xff576B95)),
                              ),
                              Text('${item['msg']}'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('2分钟前'),
                                  Icon(
                                    Icons.more,
                                    color: Color(0xffcccccc),
                                  )
                                ],
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
