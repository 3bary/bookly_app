
import 'package:bookly_app/core/widgets/custom_error_screen.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          state.books?.elementAt(0) ?? BookModel();
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books?.length ?? 0,
                itemBuilder: (context, index) =>  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CustomBookItem(
                        image: state.books![index].volumeInfo!.imageLinks?.thumbnail ?? '',
                      ),
                    ),
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomErrorScreen(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
