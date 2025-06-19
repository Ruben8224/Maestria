import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:uber/src/presentation/utils/BlocFormItem.dart';

class LoginState extends Equatable {

  final GlobalKey<FormState>? formKey;
  final BlocFormItem email;
  final BlocFormItem password;

  const LoginState({
    this.formKey,
    this.email = const BlocFormItem(error: 'Ingresa el email'),
    this.password = const BlocFormItem(error: 'Ingresa la contraseña'),
  });

  LoginState copyWith({
    GlobalKey<FormState>? formKey,
    BlocFormItem? email,
    BlocFormItem? password,
  }) {
    return LoginState(
      formKey: formKey ?? this.formKey,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

 @override
 List<Object?> get props => [formKey, email, password,];

}