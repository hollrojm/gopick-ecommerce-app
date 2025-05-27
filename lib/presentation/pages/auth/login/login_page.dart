import 'dart:ui';

import 'package:ecommerce_flutter/presentation/pages/auth/login/bloc/login_bloc_cubit.dart';
import 'package:ecommerce_flutter/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart' as rive;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBlocCubit? _loginBlocCubit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      _loginBlocCubit!.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    _loginBlocCubit = BlocProvider.of<LoginBlocCubit>(context, listen: false);

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 200,
            //height: 100,
            left: 100,
            width: MediaQuery.of(context).size.width * 1.7,
            child: Image.asset('assets/Backgrounds/Spline.png'),
          ),
          const rive.RiveAnimation.asset('assets/RiveAssets/shapes.riv'),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 30,
                sigmaY: 30,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 125,
                    ),
                    const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: StreamBuilder(
                          stream: _loginBlocCubit!.emailStream,
                          builder: (context, snapshot) {
                            return DefaultTextField(
                              label: 'Correo Electrónico',
                              icon: Icons.email,
                              onChanged: (text) {
                                _loginBlocCubit!.changeEmail(text);
                              },
                            );
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      child: StreamBuilder(
                          stream: _loginBlocCubit!.passwordStream,
                          builder: (context, snapshot) {
                            return DefaultTextField(
                              obscureText: true,
                              label: 'Contraseña',
                              icon: Icons.lock,
                              onChanged: (text) {
                                _loginBlocCubit!.changePassword(text);
                              },
                            );
                          }),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, top: 25, bottom: 10),
                      height: 50,
                      child: StreamBuilder(
                          stream: _loginBlocCubit!.validateForm,
                          builder: (context, snapshot) {
                            return ElevatedButton(
                              onPressed: () {
                                if (snapshot.hasData) {
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Error en el formulario'),
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              child: const Text(
                                'Iniciar Sesión',
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          width: 65,
                          height: 1,
                          color: Colors.white,
                        ),
                        const Text(
                          'No tienes cuenta?',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        Container(
                          width: 65,
                          height: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, top: 10, bottom: 10),
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Registrate',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
