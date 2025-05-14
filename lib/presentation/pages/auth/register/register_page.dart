import 'package:ecommerce_flutter/presentation/presentation.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/background11.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            color: const Color.fromRGBO(0, 0, 0, 0.3),
            colorBlendMode: BlendMode.darken,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.3),
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 100,
                  ),
                  const Text(
                    'REGISTRO',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      label: 'Nombre',
                      icon: Icons.person,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      label: 'Apellido',
                      icon: Icons.person,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      label: 'Email',
                      icon: Icons.email,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      label: 'Telefono',
                      icon: Icons.phone,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      obscureText: true,
                      label: 'Contraseña',
                      icon: Icons.lock,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    child: DefaultTextField(
                      obscureText: true,
                      label: 'Confirmar Contraseña',
                      icon: Icons.lock_outlined,
                      onChanged: (text) {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
                    child: DefaultButton(
                      text: 'REGISTRARSE',
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          const DefaultIconBack(
              icon: Icons.arrow_back_ios,
              color: Colors.white,
              size: 40,
              left: 35,
              top: 125)
        ],
      ),
    ));
  }
}
