import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cars_reviewer/models/autoslistmodels.dart';
import 'package:cars_reviewer/models/automodel.dart';
import 'package:cars_reviewer/pages/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AutosModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Car-Reviewer'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Consumer<AutosModel>(
        builder: (context, model, child) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const Text("Ocultar"),
                  for (var auto in model.getAutos) _crearCard(auto, model),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _crearCard(AutoModel auto, AutosModel model) {
    return Card(
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                        padding: const EdgeInsets.all(3),
                        child: IconButton(
                          onPressed: (){
                            model.getAutoSelected.setCalificacion(1.0);
                          },
                        icon: model.getAutoSelected.calificacion > 0.1
                            ? const Icon(Icons.star, color: Colors.yellow)
                            : const Icon(Icons.star_border, color: Colors.yellow),
                        ),
                        ),  
                        Padding(
                        padding: const EdgeInsets.all(3),
                        child: IconButton(
                          onPressed: (){
                            model.getAutoSelected.setCalificacion(2.0);
                          },
                        icon: model.getAutoSelected.calificacion > 1.1
                            ? const Icon(Icons.star, color: Colors.yellow)
                            : const Icon(Icons.star_border, color: Colors.yellow),
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(3),
                        child: IconButton(
                          onPressed: (){
                            model.getAutoSelected.setCalificacion(3.0);
                          },
                        icon: model.getAutoSelected.calificacion > 2.1
                            ? const Icon(Icons.star, color: Colors.yellow)
                            : const Icon(Icons.star_border, color: Colors.yellow),
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(3),
                        child: IconButton(
                          onPressed: (){
                            model.getAutoSelected.setCalificacion(4.0);
                          },
                        icon: model.getAutoSelected.calificacion > 3.1
                            ? const Icon(Icons.star, color: Colors.yellow)
                            : const Icon(Icons.star_border, color: Colors.yellow),
                        ),
                        ),
                        Padding(
                        padding: const EdgeInsets.all(3),
                        child: IconButton(
                          onPressed: (){
                            model.getAutoSelected.setCalificacion(5.0);
                          },
                        icon: model.getAutoSelected.calificacion > 4.1
                            ? const Icon(Icons.star, color: Colors.yellow)
                            : const Icon(Icons.star_border, color: Colors.yellow),
                        ),
                        ),
                      ]),
                  Text(
                    auto.marca,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    auto.linea,
                    style: TextStyle(fontSize: 20),
                  ),
                ]),
              ],
            ),
            Column(children: <Widget>[
              Image.network(
                  "https://www.toyota.com/imgix/content/dam/toyota/jellies/max/2022/corolla/xseapexedition/1860/2nr/2.png?fm=png&bg=white&w=768&h=328&q=90"),
            ]),
            TextButton(
                onPressed: () {
                  model.setAutoSelected(auto);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Second();
                  }));
                },
                child: Text("Ver detalles")),
          ],
          
        ),
      ),
      
    );
  }
}
