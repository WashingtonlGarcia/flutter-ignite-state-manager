import '../lib/app/core/state_manager.dart';
import 'package:flutter_test/flutter_test.dart';

class Controller extends StateManager<String> {
  Controller() : super(initialState: '');
}

void main() {
  late StateManager controller;
  setUp(() {
    controller = Controller();
  });

  test('Testing the State manager', () {
    expect(controller.state, isNotNull);
    controller.listen((state) {
      expect(controller.state, 'changing');
    });
    controller.setState('changing');
  });
}
