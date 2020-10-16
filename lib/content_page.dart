import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wexinApp/customer_appbar.dart';
import 'package:wexinApp/card_reconmmend.dart';
import 'package:wexinApp/card_share.dart';
import 'package:wexinApp/card_listent.dart';
import 'package:wexinApp/card_special.dart';

class ContentPager extends StatefulWidget{
  final ValueChanged<int>onPageChanged;
  final ContentPageController  contentPageController;
    /***: super(key: key) 初始化列表***/
  const ContentPager({Key key, this.onPageChanged,this.contentPageController}) : super(key: key);
  @override
  _ContentPager createState()=> _ContentPager();
}

class _ContentPager extends State<ContentPager>{
  PageController _pageController = PageController(
    /*视窗比例*/
    viewportFraction: 0.8
  );
  static List<Color>_colors=[
    Colors.blue,
    Colors.red,
    Colors.brown,
    Colors.orange,
  ];
  @override
  void initState(){
    if(widget.contentPageController!=null){
      widget.contentPageController._pageController =_pageController;
    }

    super.initState();
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        //appBar
        Customer(),
        Expanded(child:PageView(
          controller:_pageController,
        onPageChanged:widget.onPageChanged,
          children: <Widget>[
            _WrapItem(CardRecommend()),
            _WrapItem(CardShare()),
            _WrapItem(CardFree()),
            _WrapItem(CardSpecial()),
          ],
        ) ,)
      ],
    );
  }
  Widget _WrapItem(Widget widget){
    return  Padding(padding: EdgeInsets.all(10),
      child: widget,
    );
  }
  //设置状态栏样式
  _statusBar(){
    // 黑色沉浸式状态栏， 基于SystemUiOverlayStyle.dark 修改了statusBarColor
    SystemUiOverlayStyle uiOverlayStyle =SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}

// 内容区域控制器
class ContentPageController{
  PageController _pageController;
  void jumpToPage(int page){
    // print(page);
    //dart 技巧  安全的调用

    _pageController?.jumpToPage(page);
  }
}