import 'package:cars_reviewer/models/autoslistmodels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: const BackButton(
              color: Colors.white,
            ),
            elevation: 0,
          ),
          body: bodypage()),
    );
  }

  Widget bodypage () {
    return Consumer<AutosModel>(
      builder: (context, model, child) {
        return SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Text(model.getAutoSelected.marca.toString()),
                Text(model.getAutoSelected.linea.toString()),
                Text(model.getAutoSelected.precio.toString()),
                Text(model.getAutoSelected.descripcion.toString()),
                Text(model.getAutoSelected.calificacion.toString()),
                Image.network(model.getAutoSelected.imagen.toString()),
              ],
            ),
          ),
          
        );
      },
    );
  }
}
