import 'package:bookly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'newest_books_list_view.dart';



class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomHomeAppBar(),
                ),
                FeaturedBooksListView(),
                SizedBox(height:45),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Newest Books',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height:20),
              ],
            )
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal : 20.0),
            child: NewestBooksListView(),
          ),
        )
      ],
    );
  }
}
