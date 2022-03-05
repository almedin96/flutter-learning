import 'package:flutter/material.dart';
import 'package:moja_prva/dataPage.dart';

class Example {
  void kreiranjeZadacica(context, popupController){
      lista_zadacica.add(Zadacici(popupController.text));
                popupController.clear();
                Navigator.pop(context);        
  }
              
}


                         
