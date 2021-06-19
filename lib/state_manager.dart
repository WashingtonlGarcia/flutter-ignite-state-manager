typedef StateFunction = void Function(dynamic state);

class StateManager {
  var _state;
  var _onUpdate = <StateFunction>[];

  void setState(var state) {
    _state = state;
    _update();
  }

  get state => _state;

  void _update() {
    for (final StateFunction function in _onUpdate) {
      function(state);
    }
  }

  void listen(StateFunction onUpdate) {
    _onUpdate.add(onUpdate);
  }
}
