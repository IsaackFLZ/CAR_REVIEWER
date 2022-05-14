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
            backgroundColor: Colors.indigo[900],
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
          child: Text(model.getAutoSelected.marca.toString()),
          
        );
      },
    );
  }
}
