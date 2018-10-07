import 'package:demo_app_flutter/base/BaseView.dart';
import 'package:demo_app_flutter/base/ScreenState.dart';
import 'package:demo_app_flutter/viewmodel/LoginViewModel.dart';
import 'package:flutter/material.dart';

class LoginView extends BaseView<LoginViewModel>{

  @override
  Widget createView(BuildContext context) => Center(
    child: Column(
      children: <Widget>[
        StreamBuilder<ScreenState>(
          stream: viewModel.state.stream,
          builder: (context, snapshot){
            return Text(snapshot.data.toString());
          }
        ),
//      Text("Esto es un label"),
        TextField(controller: Te,)
        FlatButton(
          onPressed: viewModel.onButtonClick,
          textColor: Colors.white,
          child: Text("PUSHH ME"),
        )
      ],
    ),
  );

  @override
  LoginViewModel getViewModel() => LoginViewModel();

  @override
  void onStateChanged(ScreenState state) {
//    switch(state){
//      case Busy  : print("Busy");
//    }
  }

}