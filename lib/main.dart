import 'package:ecommerce_flutter/presentation/pages/auth/login/bloc/login_bloc_cubit.dart';
import 'package:ecommerce_flutter/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBlocCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomePage(),
          'login': (context) => const LoginPage(),
          'register': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
