import 'package:flutter_state_manager/state_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late StateManager controller;
  setUp(() {
    controller = StateManager();
  });

  test('Testing the State manager', () {
    expect(controller.state, isNull);
    controller.listen((state) {
      expect(controller.state, 'changing');
    });
    controller.setState('changing');
    controller.listen((state) {
      expect(controller.state, 'changing2');
    });
    expect(controller.state, 'changing2');
  });
}
