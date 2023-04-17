
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context){
  var width = MediaQuery.of(context).size.width;

  return CustomScrollView(
    slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal : 30.0),
          child: Column(
            children:  [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal : width * 0.2,vertical: 40),
                child: CustomBookItem(image: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',),
              ),
              Text(bookModel.volumeInfo!.title!, style: const TextStyle(fontSize:30,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,),
              const SizedBox(height:5),
               Opacity(
                opacity: 0.8,
                child: Text(
                  bookModel.volumeInfo!.authors![0],
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                ),
              ),
              const SizedBox(height: 18,),
              const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
              const SizedBox(height: 40,),
              BooksAction(book: bookModel,),
              const SizedBox(height: 50,),
              const Align(
                alignment:Alignment.centerLeft,
                child: Text(
                  'You can also like :',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 18,),
              const SimilarBooksListView(),
              const SizedBox(height:40)
            ],
          ),
        ),
      )
    ],
  );
  }
}
