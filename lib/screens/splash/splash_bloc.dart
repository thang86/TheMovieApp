import 'package:movieapp/base/base_bloc.dart';
import 'package:rxdart/rxdart.dart';

class SplashBloc extends BaseBloc {
  BehaviorSubject<SplashState> _splashSubject =
      BehaviorSubject.seeded(SplashState.LOADING);

  //stream
  Stream<SplashState> get splashStream => _splashSubject.stream;

  Future fakeLoading() async {
    _splashSubject.add(SplashState.LOADING);
    await Future.delayed(Duration(seconds: 3));
    _splashSubject.add(SplashState.DONE);
  }

  @override
  void dispose() {
    _splashSubject.close();
  }
}

enum SplashState { LOADING, DONE }
