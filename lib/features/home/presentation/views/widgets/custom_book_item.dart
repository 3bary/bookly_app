
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
            image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.fill,
            ),
        ),
      ),
    );
  }
}
