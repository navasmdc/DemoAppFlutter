import 'package:demo_app_flutter/base/BaseViewModel.dart';
import 'package:demo_app_flutter/base/ScreenState.dart';
import 'package:demo_app_flutter/mvvm/Observable.dart';

class LoginViewModel extends BaseViewModel {

  Observable<String> text = Observable.defaultValue("Valor por defecto");

  @override
  void dispose() {}

  @override
  void init() {}

  void onButtonClick() {
    text.value = "Holiii";
    if (state.value is Initial) state.value = Busy();
    else if (state.value is Busy) state.value = Done();
    else if (state.value is Done) state.value = Error("jajajaj");
    else if (state.value is Error) state.value = Initial();
  }
}
