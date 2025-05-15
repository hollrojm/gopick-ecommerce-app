import 'package:ecommerce_flutter/presentation/pages/auth/login/bloc/login_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class LoginBlocCubit extends Cubit<LoginBlocState> {
  LoginBlocCubit() : super(LoginInitial());

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _passwordController.stream;

  void changeEmail(String email) {
    if (email.isEmpty) {
      _emailController.sink.addError('Email no puede estar vacio');
    } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email)) {
    } else {
      _emailController.sink.add(email);
    }
  }

  void changePassword(String password) {
    if (password.length < 8) {
      _passwordController.sink
          .addError('La contraseña debe tener al menos 8 caracteres');
    } else {
      _passwordController.sink.add(password);
    }
  }

  Stream<bool> get validateForm =>
      Rx.combineLatest2(emailStream, passwordStream, (a, b) => true);

  void dispose() {
    changeEmail('');
    changePassword('');
  }
}
