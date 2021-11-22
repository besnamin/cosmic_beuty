import 'package:cosmic_beuty/ui/pages/inicio.dart';
import 'package:cosmic_beuty/ui/pages/registro.dart';
import 'package:cosmic_beuty/ui/pages/sesion.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cosmic Beauty',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(
              title: 'Iniciar Sesion',
            ),
        '/register': (context) => const RegisterPage(
              title: 'Registrar',
            ),
        '/home': (context) => const HomePage(
              title: 'Pagina de Perfil',
            ),
      },
    );
  }
}