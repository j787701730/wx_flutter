import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StickerGallery extends StatefulWidget {
  @override
  _StickerGalleryState createState() => _StickerGalleryState();
}

class _StickerGalleryState extends State<StickerGallery> with WidgetsBindingObserver {
  var width;
  var top;
  int index = 0;
  PageController _pageController;

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
        title: Container(
          height: 40,
          margin: EdgeInsets.only(left: 30, right: 30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: ScreenUtil.getInstance().setWidth(2)),
              borderRadius: BorderRadius.all(Radius.circular(6))),
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 0;
                      _pageController.jumpToPage(0);
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        '朋友表情',
                        style: TextStyle(color: index == 0 ? Colors.black : Colors.white),
                      ),
                    ),
                    color: index == 0 ? Colors.white : Colors.transparent,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 1;
                      _pageController.jumpToPage(1);
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        '更多表情',
                        style: TextStyle(color: index == 1 ? Colors.black : Colors.white),
                      ),
                    ),
                    color: index == 1 ? Colors.white : Colors.transparent,
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
        actions: <Widget>[IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      body: Container(
        color: Color(0xffEFEFF4),
        child: Container(
          child: PageView(
            children: [0, 1].map<Widget>((item) {
              return Container(
                child: StickerGalleryDetail(item),
              );
            }).toList(),
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                index = page;
              });
            },
          ),
        ),
      ),
    );
  }
}

class StickerGalleryDetail extends StatefulWidget {
  final index;

  StickerGalleryDetail(this.index);

  @override
  _StickerGalleryDetailState createState() => _StickerGalleryDetailState();
}

class _StickerGalleryDetailState extends State<StickerGalleryDetail> {
  List stickers = [
    {
      'banner': ['images/banner1.png'],
      'stickers': [
        {'image': 'images/sticker1.png', 'name': '兔白白和小土豆', 'num': '2', 'state': '0'},
        {'image': 'images/sticker2.png', 'name': '牛轰轰带你嗨', 'num': '1', 'state': '1'},
        {'image': 'images/sticker3.png', 'name': '乖乖鹿日常篇', 'num': '2', 'state': '0'},
        {'image': 'images/sticker1.png', 'name': '兔白白和小土豆2', 'num': '2', 'state': '0'},
        {'image': 'images/sticker1.png', 'name': '兔白白和小土豆', 'num': '2', 'state': '1'},
        {'image': 'images/sticker2.png', 'name': '牛轰轰带你嗨', 'num': '1', 'state': '0'},
        {'image': 'images/sticker3.png', 'name': '乖乖鹿日常篇', 'num': '2', 'state': '0'},
        {'image': 'images/sticker1.png', 'name': '兔白白和小土豆2', 'num': '2', 'state': '0'}
      ]
    },
    {
      'banner': ['images/banner2.png'],
      'stickers': [
        {'image': 'images/sticker_1.png', 'name': '小将其日常5'},
        {'image': 'images/sticker_2.png', 'name': '会动的柴犬会动的柴犬'},
        {'image': 'images/sticker_3.png', 'name': '不二呆日常'},
        {'image': 'images/sticker_4.png', 'name': '花苗'},
        {'image': 'images/sticker_5.png', 'name': '少女兔美萌萌'},
        {'image': 'images/sticker_6.png', 'name': '3鹅表情包'},
        {'image': 'images/sticker_1.png', 'name': '小将其日常5'},
        {'image': 'images/sticker_2.png', 'name': '会动的柴犬会动的柴犬'},
        {'image': 'images/sticker_3.png', 'name': '不二呆日常'},
        {'image': 'images/sticker_4.png', 'name': '花苗'},
        {'image': 'images/sticker_5.png', 'name': '少女兔美萌萌'},
        {'image': 'images/sticker_6.png', 'name': '3鹅表情包'}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ListView(
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
              border:
                  Border.all(color: Color(0xffD9D9DB), width: ScreenUtil.getInstance().setWidth(1)),
              borderRadius:
                  BorderRadius.all(Radius.circular(ScreenUtil.getInstance().setWidth(6.0)))),
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search,
                          size: ScreenUtil.getInstance().setWidth(44.0), color: Color(0xffC5C5C5)),
                      Text(
                        '搜索表情',
                        style: TextStyle(
                            fontSize: ScreenUtil.getInstance().setSp(26.0),
                            color: Color(0xffC5C5C5)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color(0xffD6D7DC), width: ScreenUtil.getInstance().setWidth(1)))),
          child: Image.asset(stickers[widget.index]['banner'][0]),
        ),
        widget.index == 0
            ? Container(
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(30),
                  top: ScreenUtil.getInstance().setWidth(44),
                  bottom: ScreenUtil.getInstance().setWidth(20),
                ),
                color: Colors.white,
                child: Text(
                  '朋友最新添加',
                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                ),
              )
            : Container(
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(30),
                  right: ScreenUtil.getInstance().setWidth(16),
                  top: ScreenUtil.getInstance().setWidth(44),
                  bottom: ScreenUtil.getInstance().setWidth(20),
                ),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '热门排行',
                      style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(30)),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            '新品推荐',
                            style: TextStyle(
                                color: Color(0xff666666),
                                fontSize: ScreenUtil.getInstance().setSp(24)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xff666666),
                            size: ScreenUtil.getInstance().setSp(44),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        widget.index == 0
            ? Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(24)),
                child: Column(
                  children: stickers[widget.index]['stickers'].map<Widget>((item) {
                    return Container(
                      padding: EdgeInsets.only(
                        top: ScreenUtil.getInstance().setHeight(20),
                        bottom: ScreenUtil.getInstance().setHeight(20),
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color(0xffEBEBEB),
                                  width: ScreenUtil.getInstance().setWidth(1)))),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: ScreenUtil.getInstance().setWidth(120),
                            height: ScreenUtil.getInstance().setWidth(120),
                            child: Image.asset(item['image']),
                            margin: EdgeInsets.only(right: ScreenUtil.getInstance().setWidth(40)),
                          ),
                          Expanded(
                              child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  item['name'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(28)),
                                ),
                                Text('${item['num']}个朋友在用',
                                    style: TextStyle(
                                        fontSize: ScreenUtil.getInstance().setSp(24),
                                        color: Color(0xff888888)))
                              ],
                            ),
                          )),
                          Container(
                            margin: EdgeInsets.only(left: ScreenUtil.getInstance().setWidth(40)),
                            width: ScreenUtil.getInstance().setWidth(120),
                            height: ScreenUtil.getInstance().setWidth(120),
                            child: Container(
                              height: ScreenUtil.getInstance().setHeight(52),
                              child: Center(
                                child: item['state'] == '0'
                                    ? OutlineButton(
                                        borderSide: new BorderSide(color: Color(0xff1AAD19)),
                                        onPressed: () {},
                                        child: Text(
                                          '下载',
                                          style: TextStyle(
                                              color: Color(0xff1AAD19),
                                              fontSize: ScreenUtil.getInstance().setSp(24)),
                                        ),
                                      )
                                    : OutlineButton(
                                        borderSide: new BorderSide(color: Color(0xff888888)),
                                        child: Text(
                                          '已下载',
                                          style: TextStyle(
                                              color: Color(0xff888888),
                                              fontSize: ScreenUtil.getInstance().setSp(24)),
                                        ),
                                      ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
            : Container(
                color: Colors.white,
                padding: EdgeInsets.only(
                  left: ScreenUtil.getInstance().setWidth(30),
                  right: ScreenUtil.getInstance().setWidth(30),
                ),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: stickers[widget.index]['stickers'].map<Widget>((item) {
                    return Container(
                      width: (width - ScreenUtil.getInstance().setWidth(60)) / 3 - 20,
                      margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: (width - ScreenUtil.getInstance().setWidth(60)) / 3 - 20,
                            width: (width - ScreenUtil.getInstance().setWidth(60)) / 3 - 20,
                            margin: EdgeInsets.only(bottom: ScreenUtil.getInstance().setHeight(10)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(22)),
                                border: Border.all(
                                    color: Color(0xffCDCDCD),
                                    width: ScreenUtil.getInstance().setWidth(1))),
                            padding: EdgeInsets.all(20),
                            child: Center(
                              child: Image.asset(item['image']),
                            ),
                          ),
                          Text(
                            item['name'],
                            style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(24)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              )
      ],
    );
  }
}
