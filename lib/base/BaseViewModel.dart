import 'package:demo_app_flutter/mvvm/Observable.dart';
import 'package:demo_app_flutter/base/ScreenState.dart';

abstract class BaseViewModel{

  void dispose();

  void init();

  Observable<ScreenState> state = Observable.defaultValue(Initial());

}