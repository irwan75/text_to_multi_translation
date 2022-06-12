import 'package:flutter/material.dart';

class CardListTranslate extends StatelessWidget {
  final String languanges;
  final String valueTranslating;
  final GestureTapCallback onTapSound;
  const CardListTranslate({
    Key? key,
    required this.languanges,
    required this.valueTranslating,
    required this.onTapSound,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            languanges,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Expanded(
                child: Text(valueTranslating),
              ),
              IconButton(
                  onPressed: onTapSound, icon: const Icon(Icons.volume_up)),
            ],
          ),
        ],
      ),
    );
  }
}
