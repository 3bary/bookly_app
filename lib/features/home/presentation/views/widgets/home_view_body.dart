import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'best_seller_list_view_item.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(icon: FontAwesomeIcons.magnifyingGlass, onPressed: (){}, image: AssetsData.logo),
          const FeaturedBooksListView(),
          const SizedBox(height:45),
          const Text(
            'Best Seller',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
          ),
          const SizedBox(height:20),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}
