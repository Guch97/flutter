import 'package:flutter/cupertino.dart';
import 'package:wexinApp/base_card.dart';


class CardRecommend extends BaseCard{
  @override
  _CardRecommendState createState()=>_CardRecommendState();
}
class _CardRecommendState extends BaseCardState{
  @override
  void initState(){
    subTitleColors = Color(0xffb99444);
    super.initState();
  }
 @override
 bottomContent() {
    // TODO: implement bottomContent
   //高度撑满
    return Expanded(
      child: Container(
      margin: EdgeInsets.only(top:20),
      child: Image.network(
          'http://www.devio.org/io/flutter_beauty/card_1.jpg',
          fit: BoxFit.cover,
          width:double.infinity,
          height:double.infinity,
      ),
    ));
  }
  @override
  topTitle(String title) {
    // TODO: implement topTitle
    return super.topTitle('本周推荐');
  }
  @override
  Widget subTitle(String title) {
    // TODO: implement subTitle
    return super.subTitle('送你一天天无限卡，全程书籍免费读');
  }

}