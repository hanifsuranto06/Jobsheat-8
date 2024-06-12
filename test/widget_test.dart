import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hans/main.dart';

void main() {
  testWidgets('Random name and color test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that initial name is displayed.
    expect(find.text('Hanif'), findsOneWidget);
    expect(find.text('Liinen'), findsNothing);

    // Tap the refresh icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();

    // Verify that a name from the list is displayed.
    bool nameFound = false;
    List<String> names = ['Hanif', 'Liinen', 'Faisal', 'Revaldo', 'Wahyu', 'Taufik', 'Affan', 'Alfiami'];
    for (String name in names) {
      if (find.text(name).evaluate().isNotEmpty) {
        nameFound = true;
        break;
      }
    }
    expect(nameFound, isTrue);
  });
}
