import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      expect(await driver.getText(counterTextFinder), '0');
    });

    test('增加一个计数器', () async {
      await driver.tap(buttonFinder);

      expect(await driver.getText(counterTextFinder), '1');
    });
    test('增加一个计数器', () async {
      await driver.tap(buttonFinder);

      expect(await driver.getText(counterTextFinder), '2');
    });
    test('增加一个计数器', () async {
      await driver.tap(buttonFinder);

      expect(await driver.getText(counterTextFinder), '3');
    });
  });
}