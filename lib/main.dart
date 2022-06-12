import 'package:flutter/material.dart';
import 'package:text_to_multi_transleting/app/modules/translating_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TranslatingPage(),
    );
  }
}
