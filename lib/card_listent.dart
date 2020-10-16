import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wexinApp/base_card.dart';

class CardFree extends BaseCard{
  @override
  _CardFreeState createState()=>_CardFreeState();
}
const BOOK_LIST=[
  {'title':'暴力沟通','cover':'51VykQqGq9L._SY346_.jpg','price':'19.6'},
  {'title':'暴力沟通','cover':'51VykQqGq9L._SY346_.jpg','price':'19.6'},
  {'title':'暴力沟通','cover':'51VykQqGq9L._SY346_.jpg','price':'19.6'},
  {'title':'暴力沟通','cover':'51VykQqGq9L._SY346_.jpg','price':'19.6'},
  {'title':'暴力沟通','cover':'51VykQqGq9L._SY346_.jpg','price':'19.6'},
  {'title':'暴力沟通','cover':'51VykQqGq9L._SY346_.jpg','price':'19.6'},
];
class _CardFreeState extends  BaseCardState{
  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(child: Container(
      margin: EdgeInsets.only(top:20),
      child: Column(
        children: <Widget>[
          Expanded(child: _booklist()),
          Padding(padding: EdgeInsets.only(bottom: 20),
          child: _bottomButtom(),
          )
        ],
      ),
    ));
  }
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('免费听书馆');
  }
  @override
  Widget subTtitle(String title){
    return super.topTitle('第 108 期');
  }
  _booklist(){
    return GridView.count(crossAxisCount: 3,
      // 垂直间距
      mainAxisSpacing: 10,
      // 水平间距
      crossAxisSpacing: 15,
      // 长宽比
      childAspectRatio: 0.66,
      padding:EdgeInsets.only(left:10,right:10),
      children: BOOK_LIST.map<Widget>((item){
          return __item(item);
      }).toList(),
    );
  }
  _bottomButtom(){
      // return RaisedButton(onPressed: (){},
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20)
      //   ),
      //   padding: EdgeInsets.only(top:13,bottom: 15),
      //   color: Colors.blue,
      //   child: Text('免费领取',style: TextStyle(color: Colors.white),),);
    return FractionallySizedBox(
          widthFactor: 1,
            child: Padding(padding: EdgeInsets.only(left:20,right: 20),
            child: RaisedButton(onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.only(top:13,bottom: 15),
            color: Colors.blue,
            child: Text('免费领取',style: TextStyle(color: Colors.white),),),
        ),
    );
  }
  __item(Map<String,String>item){
      return Container(
        child:Column(
          children: <Widget>[
            // 绝对布局
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Image.network(''
                    'http://www.devio.org/io/flutter_beauty/book_cover/${item['cover']}',fit:BoxFit.cover),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: Colors.black38,
                  ),
                  child: Icon(Icons.play_arrow,
                  color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding:EdgeInsets.all(3),
                    decoration: BoxDecoration(color:Colors.black54),
                    child: Text('原价${item['price']}',style: TextStyle(color: Colors.white,fontSize: 10),),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              // child:Text(
              //   item['title'],
              //   maxLines: 2,
              //   overflow: TextOverflow.ellipsis,
              // ),
            )
          ],
        ) ,
      );
  }
}