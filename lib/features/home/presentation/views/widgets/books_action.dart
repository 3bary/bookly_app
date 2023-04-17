import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../data/models/book_model/BookModel.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            text: '19.99',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.orange,
            text: 'Free Preview',
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ), onPressed: () async {
              Uri url = Uri.parse(book.volumeInfo!.previewLink!);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
          },
          ),
        )
      ],
    );
  }
}
