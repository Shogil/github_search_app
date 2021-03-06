import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Should display Current User Profile',
    (WidgetTester tester) async {
      // Arrange
      // enableFlutterDriverExtension();

      var app;
      app.main();
      await tester.pumpAndSettle();

      final titleFinder = find.byKey(const ValueKey('input.username'));
      final profileFinder = find.byKey(const ValueKey('button.check'));
      // final descriptionFinder = find.byKey(const ValueKey('input.description'));
      // final saveFinder = find.byKey(const ValueKey('button.save'));

      // Act

      await tester.enterText(titleFinder, 'safwanidrees');
      await tester.pumpAndSettle();

      await tester.tap(profileFinder);
      await tester.pumpAndSettle();

      // await tester.enterText(
      //     descriptionFinder, 'Go to the mall and shop for next month’s stock.');
      // await tester.pumpAndSettle();

      // await tester.tap(saveFinder);
      // await tester.pumpAndSettle();

      // Assert
      await Future.delayed(const Duration(seconds: 3));

      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));
      expect(find.byKey(const ValueKey("image.user")), findsOneWidget);
      // expect(find.text('Go to the mall and shop for next month’s stock.'),
      //     findsOneWidget);
    },
  );
}
