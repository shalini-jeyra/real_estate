import 'package:real_estate_app/pages/search_page/search_page_components/search_page_components.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            height: 60,
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'type f.e. district,property type',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.black38),
                      icon: Icon(
                        Icons.search,
                        color: Colors.black38,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Icon(
              Icons.filter_list,
              color: Colors.black,
            ),
          ]),
      body: Column(
        children: [
          ListTile(
            leading: Text(
              'Popular in London',
              style: AppTextStyle.primaryText,
            ),
            trailing: Wrap(
              children: [
                Icon(Icons.menu),
                Text('Map'),
              ],
            ),
          ),
          SearchItemWidget(
            text: '\u{20AC}${2.445}pem',
            text1: 'Furnished two bedroom apartment glass house',
            text2: 'Wardour Street,Soho,W1F',
          ),
          SearchItemWidget(
            text: '\u{20AC}${2.145}pem',
            text1: 'Comfortable bright two bedroom apartment with garage',
            text2: 'Wardour Street,Soho,W1F',
          ),
        ],
      ),
    );
  }
}
