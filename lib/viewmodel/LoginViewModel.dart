import 'package:demo_app_flutter/base/BaseViewModel.dart';
import 'package:demo_app_flutter/base/ScreenState.dart';

class LoginViewModel extends BaseViewModel {
  @override
  void dispose() {}

  @override
  void init() {}

  void onButtonClick() {
    if (state.value is Initial) state.value = Busy();
    else if (state.value is Busy) state.value = Done();
    else if (state.value is Done) state.value = Error("jajajaj");
    else if (state.value is Error) state.value = Initial();
  }
}
