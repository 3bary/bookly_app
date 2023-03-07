import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
            image: const DecorationImage(
                image: AssetImage(AssetsData.testImage),
                fit: BoxFit.fill,
            ),
        ),
      ),
    );
  }
}
