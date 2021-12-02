import 'package:cosmic_beuty/domain/controllers/sesion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;
  
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _login() {
    setState(() {
      Get.toNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Obtener Controlador GetX
    SesionController ct = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: const Text(
          'Cosmic Beauty',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(""),
          const Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo',
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
          ),
          Center(
            child: FloatingActionButton(
              onPressed: _login,
              tooltip: 'Iniciar Sesion',
              child: const Icon(Icons.login),
              backgroundColor: Colors.pinkAccent,
            ),
          ),
          const Text(""),
          Center(
            child: MaterialButton(
              child: const Text('Registrar'),
              color: Colors.pinkAccent,
              onPressed: () {
                 Get.toNamed('/register');
              },
            ),
          ),
        ],
      ),
    );
  }
}
