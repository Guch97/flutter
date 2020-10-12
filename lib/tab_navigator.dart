import 'package:flutter/material.dart';
import 'package:wexinApp/content_page.dart';
//
class TabNavigator  extends  StatefulWidget{
  @override
  _TabNavigator createState()=>_TabNavigator();
}
class  _TabNavigator extends State<TabNavigator>{
  final _defaultColor =Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final ContentPageController _contentPageController = ContentPageController();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        // 当前容器样式
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffedeef0),
            Color(0xffe6e7e9),
          ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child:ContentPager(
          contentPageController:_contentPageController,
            onPageChanged:(int index){
                 setState(() {
                   _currentIndex = index;
                   // print(_currentIndex);
               });
           }
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex:_currentIndex,
      onTap: (index){
        _contentPageController.jumpToPage(index);
        setState(() {
          _currentIndex = index;
        });
      },
      type:BottomNavigationBarType.fixed,
      items: [
        _bottomItem('商品',Icons.folder,0),
        _bottomItem('手机',Icons.explore,1),
        _bottomItem('购物',Icons.donut_small,2),
        _bottomItem('我的',Icons.person,3)]),
    );
  }
  _bottomItem(String title,IconData icon ,int index){
    return BottomNavigationBarItem(
      icon: Icon(icon, color: _defaultColor,),
      activeIcon:Icon(icon,color:_activeColor ,),
      title:Text(title,style: TextStyle(color:_currentIndex!=index?_defaultColor:_activeColor))
    );
  }
}
