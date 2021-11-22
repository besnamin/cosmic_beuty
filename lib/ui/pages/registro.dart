import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  void _signin() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
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
              'Registro',
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
                  labelText: 'Nombre Completo',
                ),
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
          ),
          Center(
            child: FloatingActionButton(
              onPressed: _signin,
              tooltip: 'Registrarse',
              child: const Icon(Icons.add),
              backgroundColor: Colors.pinkAccent,
            ),
          ),
          const Text(""),
          Center(
            child: MaterialButton(
              child: const Text('Volver'),
              color: Colors.pinkAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
     
    );
  }
}