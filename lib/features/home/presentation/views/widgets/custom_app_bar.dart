import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.icon,required this.onPressed, required this.image}) : super(key: key);
  final String image;
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        children: [
          Image.asset(image,height: 26,),
          const Spacer(),
          IconButton(onPressed: onPressed, icon: Icon(icon)),
        ],
      ),
    );
  }
}
