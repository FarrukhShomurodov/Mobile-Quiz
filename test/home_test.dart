import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_test/activities/home.dart';
import 'package:quiz_test/activities/questions.dart';
import 'package:quiz_test/component/subject.dart';
// Import the main app widget

void main() {
  testWidgets('Test Home widget', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(
      home: Home(),
    ));

    // Verify the presence of key widgets and elements
    expect(find.text("Let's test your knowledge"), findsOneWidget);
    expect(find.byType(TabBar), findsOneWidget);
    expect(find.byType(Content), findsOneWidget);
    expect(find.text('Start Quiz'), findsOneWidget);

    // Tap the 'Start Quiz' button and verify the navigation
    await tester.tap(find.text('Start Quiz'));
    await tester.pumpAndSettle(); // Wait for navigation to complete

    // Verify that you've navigated to the QuizScreen (you should replace QuizScreen with your actual quiz screen)
    expect(find.byType(QuizScreen), findsOneWidget);
  });
}
