import 'package:flutter/cupertino.dart';
import 'package:wexinApp/base_card.dart';

class CardFree extends BaseCard{
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

  }
  _bottomButtom(){

  }
}