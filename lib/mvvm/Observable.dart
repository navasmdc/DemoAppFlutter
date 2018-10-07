import 'dart:async';

class Observable<T> {

  Observable(){
    _stateController.onListen = _getValueOnSubscribe;
  }

  static Observable<T> defaultValue<T>(T defaultValue){
    final Observable<T> observable = Observable();
    observable.value = defaultValue;
    return observable;
  }

  final StreamController<T> _stateController = StreamController<T>.broadcast();

  T   _value;
  T get value => _value;
    set value(T value){
        this._value = value;
        _stateController.sink.add(value);
    }

  Stream<T> get stream => _stateController.stream;

  StreamSubscription listen(void onData(T data)) => _stateController.stream.listen(onData);

  void _getValueOnSubscribe(){
    if(value != null) Future.delayed(Duration(seconds: 0),(){value = _value;});
  }

  void dispose() => _stateController.close();

}