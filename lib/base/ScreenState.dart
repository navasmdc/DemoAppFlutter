abstract class ScreenState{
  bool isInitial()  => this is Busy;
  bool isBusy()     => this is Busy;
  bool isDone()     => this is Done;
  bool isError()    => this is Error;

  @override
  String toString() {
    return this.runtimeType.toString();
  }
}

class Initial   extends ScreenState {}
class Busy      extends ScreenState {}
class Done      extends ScreenState {}
class Error     extends ScreenState { Error(this.error); String error;}

