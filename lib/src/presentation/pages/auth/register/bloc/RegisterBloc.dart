import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/src/presentation/pages/auth/register/bloc/RegisterEvent.dart';
import 'package:uber/src/presentation/pages/auth/register/bloc/RegisterState.dart';
import 'package:uber/src/presentation/utils/BlocFormItem.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState>{

  final formKey = GlobalKey<FormState>();

  RegisterBloc(): super(RegisterState()){
    on<RegisterInitEvent>((event, emit){
      emit(state.copyWith(formKey: formKey));
    });

    on<NameChanged>((event, emit) {
      emit(
        state.copyWith(
          name: BlocFormItem(
            value: event.name.value,
            error: event.name.value.isEmpty ? 'Ingresa el nombre' : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<LastnameChanged>((event, emit) {
      emit(
        state.copyWith(
          lastname: BlocFormItem(
            value: event.lastname.value,
            error: event.lastname.value.isEmpty ? 'Ingresa el apellido' : null,
          ),
          formKey: formKey,
        ),
      );
    });


    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: BlocFormItem(
            value: event.email.value,
            error: event.email.value.isEmpty ? 'Ingresa el email' : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<PhoneChanged>((event, emit) {
      emit(
        state.copyWith(
          phone: BlocFormItem(
            value: event.phone.value,
            error: event.phone.value.isEmpty ? 'Ingresa el teléfono' : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: BlocFormItem(
            value: event.password.value,
            error: event.password.value.isEmpty
              ? 'Ingresa la contraseña'
              : event.password.value.length < 6
                ? 'La contraseña debe tener al menos 6 caracteres'
                : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<ConfirmPasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          confirmPassword: BlocFormItem(
            value: event.confirmPassword.value,
            error: event.confirmPassword.value.isEmpty
              ? 'Confirma la contraseña'
              : event.confirmPassword.value != state.password.value
                ? 'Las contraseñas no coinciden'
                : 
                null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<FormSubmit>((event, emit) {
      if (state.formKey?.currentState?.validate() ?? false) {
        print('Nombre: ${state.name.value}');
        print('Apellido: ${state.lastname.value}');
        print('Email: ${state.email.value}');
        print('Teléfono: ${state.phone.value}');
        print('Contraseña: ${state.password.value}');
        print('Confirmar Contraseña: ${state.confirmPassword.value}');
      } else {
        print('Formulario no válido');
      }
    });

    on<FormReset>((event, emit) {
      state.formKey?.currentState?.reset();
    });
  }

}