import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:multiple_pages_app/main.dart'; // Update with the correct import path

void main() {
  testWidgets('Input page validation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: MyApp(),
    ));

    // Verify that the input fields are initially empty.
    expect(find.text('Name'),
        findsOneWidget); // Assuming your input field has the label 'Name'
    expect(find.text('Student ID'),
        findsOneWidget); // Assuming your input field has the label 'Student ID'
    expect(find.text('Email'),
        findsOneWidget); // Assuming your input field has the label 'Email'

    // Enter valid data into the input fields.
    await tester.enterText(find.byKey(const Key('name_input')), 'John Doe');
    await tester.enterText(find.byKey(const Key('id_input')), '12345678901');
    await tester.enterText(
        find.byKey(const Key('email_input')), 'john.doe@example.com');

    // Tap the submit button and trigger a frame.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that the input page navigates to the display page upon submission.
    expect(find.text('Display Page'), findsOneWidget);
    expect(find.text('Name: John Doe'), findsOneWidget);
    expect(find.text('Student ID: 12345678901'), findsOneWidget);
    expect(find.text('Email: john.doe@example.com'), findsOneWidget);
  });
}
