import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount:10,
        itemBuilder: (context,index)=> const Padding(
          padding: EdgeInsets.symmetric(vertical : 10.0),
          child: BookListViewItem(),
        )
    );
  }
}
