// ignore_for_file: file_names, non_constant_identifier_names, unused_import

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final taskController = TextEditingController();
final popupController = TextEditingController();
String imeZadatka = taskController.text;
String imemalogzadatka = popupController.text;
List<Zadacina> zadacinamain = [];




class Zadacina {
  late String imeZadacine;
  late List<Zadacici> listaZadacica;

  Zadacina(this.imeZadacine, this.listaZadacica);

}


List<Zadacici> lista_zadacica =[];


class Zadacici {
  late String imeZadacica;
 late bool daLiJeCekirano = false;

  Zadacici(this.imeZadacica);

}



