typedef StateFunction<T> = void Function(T state);

class StateManager<T> {
  late T _state;
  var _onUpdate = <StateFunction<T>>[];

  void setState(T state) {
    _state = state;
    _update();
  }

  get state => _state;

  void _update() {
    for (final StateFunction<T> function in _onUpdate) {
      function(state);
    }
  }

  void listen(StateFunction<T> onUpdate) {
    _onUpdate.add(onUpdate);
  }
}
