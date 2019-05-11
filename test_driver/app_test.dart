import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

// 计数器的 test
// void main() {
//   group('Counter App', () {
//     final counterTextFinder = find.byValueKey('counter');
//     final buttonFinder = find.byValueKey('increment');

//     FlutterDriver driver;

//     setUpAll(() async {
//       driver = await FlutterDriver.connect();
//     });

//     tearDownAll(() async {
//       if (driver != null) {
//         driver.close();
//       }
//     });

//     test('starts at 0', () async {
//       expect(await driver.getText(counterTextFinder), '0');
//     });

//     test('增加一个计数器', () async {
//       await driver.tap(buttonFinder);

//       expect(await driver.getText(counterTextFinder), '1');
//     });
//     test('增加一个计数器', () async {
//       await driver.tap(buttonFinder);

//       expect(await driver.getText(counterTextFinder), '2');
//     });
//     test('增加一个计数器', () async {
//       await driver.tap(buttonFinder);

//       expect(await driver.getText(counterTextFinder), '3');
//     });
//   });
// }


// 滑动 测试用例
void main() {
  group('Scrollable App', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('verifies the list contains a specific item', () async {
      final listFinder = find.byValueKey('long_list');
      final itemFinder = find.byValueKey('item_50_text');

      // await driver.scrollUntilVisible(
      //   listFinder, 
      //   itemFinder,
      //   dyScroll: -300.0,
      // );

      final timeline = await driver.traceAction(() async {
        await driver.scrollUntilVisible(
          listFinder,
          itemFinder,
          dyScroll: -300.0
        );

        expect(await driver.getText(itemFinder),'Item 50',);
      });


      final summary = new TimelineSummary.summarize(timeline);

      summary.writeSummaryToFile('scrolling_summary', pretty: true);

      summary.writeTimelineToFile('scrolling_timeline', pretty: true);

    });

  });
}