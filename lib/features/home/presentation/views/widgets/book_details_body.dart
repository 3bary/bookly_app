import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
  var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal : 30.0),
      child: Column(
        children:  [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal : width * 0.2,vertical: 40),
            child: const CustomBookItem(),
          ),
          const Text('Jungle Book', style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,)),
          const SizedBox(height:5),
          const Opacity(
            opacity: 0.8,
            child: Text(
              'J.K. Rowling',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ),
        ],
      ),
    );
  }
}
