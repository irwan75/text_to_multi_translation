import 'package:flutter/material.dart';

class TextFormOriginalText extends StatelessWidget {
  final GestureTapCallback onTapSound;
  const TextFormOriginalText({
    Key? key,
    required this.onTapSound,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          TextFormField(
            minLines: 5,
            maxLines: 10,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: onTapSound,
              icon: const Icon(Icons.volume_up),
            ),
          ),
        ],
      ),
    );
  }
}
