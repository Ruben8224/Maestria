import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/src/presentation/pages/auth/register/RegisterContent.dart';
import 'package:uber/src/presentation/pages/auth/register/bloc/RegisterBloc.dart';
import 'package:uber/src/presentation/pages/auth/register/bloc/RegisterState.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return RegisterContent(state);
        },
      ),
    );
  }
}
