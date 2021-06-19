typedef StateFunction<T> = void Function(T state);

abstract class StateManager<T> {
  T _state;
  var _onUpdate = <StateFunction<T>>[];

  StateManager({required T initialState}) : _state = initialState;

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
