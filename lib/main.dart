import 'package:cosmic_beuty/domain/controllers/sesion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/app.dart';

void main() {
  Get.lazyPut<SesionController>(() => SesionController());
  runApp(const App());
}