import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:daily_planner/providers/task_provider.dart';
import 'package:daily_planner/screens/home_screen.dart';

void main() {
  testWidgets('Add Task Flow', (WidgetTester tester) async {
    // Wrap HomeScreen with Provider
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => TaskProvider(),
        child: const MaterialApp(home: HomeScreen()),
      ),
    );

    // Wait for widgets to settle
    await tester.pumpAndSettle();

    // Verify HomeScreen is displayed
    expect(find.text('Daily Planner'), findsOneWidget);

    // Tap the FloatingActionButton to go to AddTaskScreen
    final fab = find.byType(FloatingActionButton);
    expect(fab, findsOneWidget);
    await tester.tap(fab);
    await tester.pumpAndSettle();

    // Verify AddTaskScreen is displayed
    expect(find.text('Add Task'), findsOneWidget);

    // Enter task title
    await tester.enterText(find.byType(TextFormField).first, 'Test Task');

    // Enter description
    await tester.enterText(find.byType(TextFormField).last, 'Task description');

    // Tap Save button
    final saveButton = find.text('Save');
    await tester.tap(saveButton);
    await tester.pumpAndSettle();

    // Back to HomeScreen, verify task is displayed
    expect(find.text('Test Task'), findsOneWidget);
    expect(find.text('Task description'), findsOneWidget);
  });
}
