import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amberAccent,
        ),
        SizedBox(width:6),
        Text(
          '4.8',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(width:3),
        Text(
            '(497)',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
        )
      ],
    );
  }
}
