import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final double? width;
  final double? height;

  const MyCustomWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}