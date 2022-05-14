import 'package:cars_reviewer/models/basemodel.dart';
import 'package:cars_reviewer/services/autostate.dart';

class AutoModel extends BaseModel {
  int ano;
  String marca;
  String linea;
  String precio;
  String descripcion;
  double calificacion;
  AutoModel(this.ano, this.marca, this.linea, this.precio, this.descripcion, this.calificacion){
    setState(AutoState.init);
  }
  int get getAno => ano;
  String get getMarca => marca;
  String get getLinea => linea;
  String get getPrecio => precio;
  String get getDescripcion => descripcion;
  double get getCalificacion => calificacion;
  setCalificacion(double value) {
    calificacion = value;
    notifyListeners();
  }
}
