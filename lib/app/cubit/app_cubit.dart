import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

enum AppState { landing, services }

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.landing);

  void setLanding() {
    emit(AppState.landing);
  }

  void setServices() {
    emit(AppState.services);
  }
}
