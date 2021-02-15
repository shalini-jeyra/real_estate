import 'package:real_estate_app/pages/search_page/search_page_components/search_page_components.dart';
class SearchItemWidget extends StatelessWidget {
  final String text;
  final String text1;
  final String text2;
  const SearchItemWidget({
    this.text,this.text1,this.text2
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          height: 200,
          width: 380,
          decoration: AppBorder.buttonDecoration,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(340, 10, 0, 0),
          child: CircleAvatar(
            child: Container(
              child: Icon(Icons.thumb_up_alt_outlined),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 150, 0, 0),
          child: Container(
            height: 30,
            width: 100,
            decoration: AppBorder.appDecoration,
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Container(
      margin: EdgeInsets.fromLTRB(20, 200, 0, 0),
      height: 50,
      width: 280,
      child: Text(
        text1,
        style: AppTextStyle.secondaryText,
      ),
    ),
    Container(
      margin: EdgeInsets.fromLTRB(15, 240, 0, 0),
      child: Row(
        children: [
          Icon(Icons.place),
          Text(
            text2,
            style: AppStyle.ternaryAppText,
          )
        ],
      ),
    )
      ],
    );
  }
}
