
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
            imageUrl: image,
          errorWidget: (context, url, error) => const Icon(FontAwesomeIcons.circleExclamation),
          placeholder: (context, url,) => const Center(child: CircularProgressIndicator(),),
        ),
      ),
    );
  }
}
