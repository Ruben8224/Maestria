import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:uber/src/presentation/utils/BlocFormItem.dart';

class RegisterState extends Equatable{

  final BlocFormItem name;
  final BlocFormItem lastname;
  final BlocFormItem email;
  final BlocFormItem phone;
  final BlocFormItem password;
  final BlocFormItem confirmPassword;
  final GlobalKey<FormState>? formKey;

  const RegisterState({
    this.name = const BlocFormItem(error: 'Ingresa el nombre'),
    this.lastname = const BlocFormItem(error: 'Ingresa el apellido'),
    this.email = const BlocFormItem(error: 'Ingresa el email'),
    this.phone = const BlocFormItem(error: 'Ingresa el teléfono'),
    this.password = const BlocFormItem(error: 'Ingresa la contraseña'),
    this.confirmPassword = const BlocFormItem(error: 'Confirma la contraseña'),
    this.formKey,
  });

  RegisterState copyWith({
    BlocFormItem? name,
    BlocFormItem? lastname,
    BlocFormItem? email,
    BlocFormItem? phone,
    BlocFormItem? password,
    BlocFormItem? confirmPassword,
    GlobalKey<FormState>? formKey,
  }) {
    return RegisterState(
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      formKey: formKey ?? this.formKey,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    name,
    lastname,
    email,
    phone,
    password,
    confirmPassword,
    formKey,
  ];

}