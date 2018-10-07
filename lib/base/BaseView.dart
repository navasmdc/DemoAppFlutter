import 'package:demo_app_flutter/base/BaseViewModel.dart';
import 'package:demo_app_flutter/base/ScreenState.dart';
import 'package:flutter/material.dart';

abstract class BaseView<T extends BaseViewModel> {

  T viewModel;

  Widget build(BuildContext context) {
    viewModel = getViewModel();
    final view = createView(context);
    viewModel.state.listen(onStateChanged);
    viewModel.init();
    return view;
  }


  T getViewModel();

  Widget createView(BuildContext context);

  void onStateChanged(ScreenState state);


}