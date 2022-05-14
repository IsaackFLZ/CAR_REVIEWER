import 'package:flutter/material.dart';

class Autos{
  int ano;
  String marca;
  String linea;
  String precio;
  String descripcion;
  String imagen;

  Autos(this.ano, this.marca, this.linea, this.precio, this.descripcion, this.imagen);

  static List<Autos> getAutos(){
    return [
      Autos(2023, "Chevrolet", "Onix", "\$1.000.000", "Un auto de Chevrolet", "assets/onix.jpg"),
      Autos(2022, "Toyota", "Corolla", "\$1.000.000", "Un auto de Toyota", "assets/corolla.jpg"),
      Autos(2019, "Mazda", "Mazda 3", "\$1.000.000", "Un auto de Mazda", "assets/mazda.jpg"),
      Autos(2021, "Renault", "Duster", "\$1.000.000", "Un auto de Renault", "assets/duster.jpg"),
      Autos(2020, "Nissan", "Versa", "\$1.000.000", "Un auto de Nissan", "assets/versa.jpg"),
    ];
  }
}