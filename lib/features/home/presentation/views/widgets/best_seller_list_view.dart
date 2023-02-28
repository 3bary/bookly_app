import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount:10,
          itemBuilder: (context,index)=> const Padding(
            padding: EdgeInsets.symmetric(vertical : 10.0),
            child: BestSellerListViewItem(),
          )
      ),
    );
  }
}