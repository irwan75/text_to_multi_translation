import 'package:flutter/material.dart';

class CardSelectLanguange extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;
  const CardSelectLanguange({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(right: 10),
        child: Text(
          title,
        ),
      ),
    );
  }
}
