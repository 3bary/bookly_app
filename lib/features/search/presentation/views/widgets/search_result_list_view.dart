import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount:10,
        itemBuilder: (context,index)=> Padding(
          padding: const EdgeInsets.symmetric(vertical : 10.0),
          child: BookListViewItem(bookModel: BookModel(),),
        )
    );
  }
}
