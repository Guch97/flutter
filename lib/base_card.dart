import 'package:flutter/material.dart';

// 卡片
class BaseCard extends  StatefulWidget{
  @override
  BaseCardState createState()=>BaseCardState();
}

class BaseCardState extends State<BaseCard>{
  Color subTitleColors = Colors.grey;
  Color bottomTitleColors = Colors.grey;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PhysicalModel(
      color:Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,//抗拒齿痕
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
              topContent(),
              bottomContent(),
          ],
        )
      ),
    );
  }
  topContent(){
    return Padding(padding: EdgeInsets.only(left: 20,top: 26,bottom: 20),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[topTitle(''),topTitle2('')],
          ),
          subTitle('')
        ],
      ),
    );
  }
  bottomContent(){
    return Container();
  }
  Widget subTitle(String title){
    return Padding(padding: EdgeInsets.only(top: 5),
    child: Text(title,style: TextStyle(fontSize: 11,color: subTitleColors),),
    );
  }
  topTitle(String title){
    return Text(title,style: TextStyle(fontSize: 22),);
  }
  topTitle2(String title){
    return Padding(padding: EdgeInsets.only(bottom: 5),
      child: Text(title,style: TextStyle(fontSize: 10),),
    );
  }
  bottomTitle(String title){
    return Text(title, style: TextStyle(fontSize: 12,color:bottomTitleColors));
  }
}