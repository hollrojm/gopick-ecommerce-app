import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.person,
            color: Colors.black,
            size: 125,
          ),
          const Text(
            'LOGIN',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextField(
            decoration: InputDecoration(label: Text('Correo Electrónico')),
          ),
          const TextField(
            decoration: InputDecoration(label: Text('Contraseña')),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(color: Colors.black),
            ),
          ),
          const Text('No tienes cuenta?'),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text(
              'Registrate',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
