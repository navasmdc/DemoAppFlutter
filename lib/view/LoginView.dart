import 'package:demo_app_flutter/base/BaseView.dart';
import 'package:demo_app_flutter/base/ScreenState.dart';
import 'package:demo_app_flutter/mvvm/BindableTextField.dart';
import 'package:demo_app_flutter/viewmodel/LoginViewModel.dart';
import 'package:flutter/material.dart';

class LoginView extends BaseView<LoginViewModel> {
  @override
  Widget createView(BuildContext context) => new Scaffold(
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  StreamBuilder<String>(
                      stream: viewModel.text.stream,
                      builder: (context, snapshot) {
                        return Text(
                          snapshot.data.toString(),
                          style: TextStyle(color: Colors.black),
                        );
                      }),
                  BindableTextField(
                    viewModel.text,
                    style: TextStyle(color: Colors.red),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.red),
                  ),
                  FlatButton(
                    onPressed: viewModel.onButtonClick,
                    textColor: Colors.black,
                    child: Text("PUSHH ME"),
                  )
                ],
      )));

  @override
  LoginViewModel getViewModel() => LoginViewModel();

  @override
  void onStateChanged(ScreenState state) {
//    switch(state){
//      case Busy  : print("Busy");
//    }
  }
}
