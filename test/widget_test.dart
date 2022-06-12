// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:text_to_multi_transleting/app/modules/bloc/translating_bloc.dart';

class MockTranslatingBloc extends TranslatingBloc {}

void main() {
  group('Test Running Widget Test', () {
    MockTranslatingBloc translatingBloc;

    setUp(() {
      translatingBloc = MockTranslatingBloc();
    });

    Widget makeTestebleWidget({required Widget child}) {
      return MaterialApp(
        home: child,
      );
    }

    tearDown(() {
      // translatingBloc.close();
    });

    testWidgets('MyApp', (WidgetTester tester) async {
      // const Key keyButton = Key('buttonTranslate');
      // const Key keyButtonTesting = Key('buttonTesting');

      // Build our app and trigger a frame.

      // TranslatingPage widget = TranslatingPage();
      // final element = widget.createElement(); // this will set state.widget
      // final state = element.state as StatefulElement;
      // print(element.runtimeType);

      // await tester.pumpWidget(makeTestebleWidget(child: state));

      // Verify that our counter starts at 0.
      // expect(find.text('0'), findsOneWidget);
      // expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      // await tester.tap(find.byIcon(Icons.add));
      // await tester.pump();

      // Verify that our counter has incremented.
      // expect(find.text('run'), findsOneWidget);
      // expect(find.text('1'), findsOneWidget);
      // Finder buttonTranslate = find.byKey(keyButton);
      // Finder buttonTesting = find.byKey(keyButtonTesting);
      // Finder buttonTestingOkee = find.byType(ButtonDefault);

      // expect(buttonTranslate, findsOneWidget);
      // expect(buttonTesting, findsOneWidget);
      // expect(buttonTestingOkee, findsOneWidget);
      // await tester.tap(buttonTranslate);
      // await tester.tap(buttonTesting);
      // await tester.tap(buttonTestingOkee);
    });
  });
}
