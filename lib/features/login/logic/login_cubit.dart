import 'package:bloc/bloc.dart';
import 'package:home_ease/features/login/logic/login_state.dart';
import 'package:meta/meta.dart';


class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial());
}
