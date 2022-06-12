import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  final String titleButton;
  final GestureTapCallback onTap;
  final bool showLoading;
  const ButtonDefault({
    Key? key,
    required this.titleButton,
    required this.onTap,
    required this.showLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(4),
      color: Colors.blue,
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                titleButton,
                style: const TextStyle(color: Colors.white),
              ),
              if (showLoading) const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
