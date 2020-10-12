
import 'package:flutter/material.dart';
import 'package:wexinApp/base_card.dart';


class CardShare extends BaseCard{
  @override
  _CardShare createState()=>_CardShare();
}
class _CardShare extends BaseCardState{
  @override
  bottomContent() {
    // TODO: implement bottomContent
    return Expanded(child:Container(
      margin: EdgeInsets.only(top:20),
      decoration: BoxDecoration(color: Color(0xfff6f7f9)),
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.only(top:20,left:15,bottom: 20),
          child: Image.network('http://www.devio.org/io/flutter_beauty/card_list.png',
            fit: BoxFit.cover,
            width:double.infinity,
            height:double.infinity,
            ),
          )),
          Padding(padding: EdgeInsets.only(bottom: 20),child:bottomTitle('298756人·参与活动'),)
        ],
      ),
    ));
  }
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('分享得联名卡');
  }
  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('分享给朋友最多可获得12天无限卡');
  }
  topTitle2(String title){
    return Padding(padding: EdgeInsets.only(bottom: 5),
      child: Text('/第19期',style: TextStyle(fontSize: 10),),
    );
  }
}