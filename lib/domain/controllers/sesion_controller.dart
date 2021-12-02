import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SesionController extends GetxController{
  var _correo="".obs;
  var _contrasena="".obs;

  String get corrreo => _correo.value;
  String get contrasena => _contrasena.value;

 

  // Metodo para actualizar Decimales
  void Ingresar() {
    try {
     if (_correo.value == "" || _contrasena.value == "" ){
       const AlertDialog (semanticLabel: "Todos los campos son necesarios");
     }else{
        Get.toNamed('/home');
     }
    // ignore: empty_catches
    } catch (e) {}
  }
}
