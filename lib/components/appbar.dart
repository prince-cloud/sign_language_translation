import 'package:flutter/material.dart';

abstract class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String? title;
  const CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        title!,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
