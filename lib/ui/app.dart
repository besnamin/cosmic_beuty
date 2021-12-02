import 'package:cosmic_beuty/ui/pages/chat.dart';
import 'package:cosmic_beuty/ui/pages/estado.dart';
import 'package:cosmic_beuty/ui/pages/inicio.dart';
import 'package:cosmic_beuty/ui/pages/registro.dart';
import 'package:cosmic_beuty/ui/pages/sesion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cosmic Beauty',
      home: const LoginPage(
        title: 'Iniciar Sesion',
      ),
      getPages: [
        GetPage(
            name: "/",
            page: () => const LoginPage(
                  title: 'Iniciar Sesion',
                ),
                ),
        GetPage(
            name: "/register",
            page: () => const RegisterPage(
                  title: 'Registro',
                ),
                ),
        GetPage(
            name: "/home",
            page: () => const HomePage(
                  title: 'Pagina De Perfil',
                ),
                ),
        GetPage(
            name: "/estado",
            page: () => const EstadoPage(
                  title: 'Pagina De Estado',
                ),
                ),
        GetPage(
            name: "/chat",
            page: () => const ChatPage(
                  title: 'Pagina De Chat', conv: [], meUser: '',
                ),
                ),
      ],
      
    );
  }
}
