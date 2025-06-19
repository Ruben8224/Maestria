import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber/src/presentation/pages/auth/login/LoginPage.dart';
import 'package:uber/src/presentation/pages/auth/login/bloc/LoginBloc.dart';
import 'package:uber/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:uber/src/presentation/pages/auth/register/RegisterPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: (context) => LoginBloc()..add(LoginInitEvent()),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'register': (BuildContext context) => Registerpage(),
        },
      ),
    );
  }
}
