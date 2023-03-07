import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
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
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
        ),
        )
      ],
    );
  }
}
