class StateManager {
  var _state;
  var _onUpdate;

  void setState(var state) {
    _state = state;
    if (_onUpdate != null) {
      _onUpdate = _state;
    }
  }

  get state => _state;

  void listen(void Function(dynamic state) onUpdate) {
    _onUpdate = onUpdate;
  }
}
