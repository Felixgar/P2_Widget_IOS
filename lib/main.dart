import 'package:flutter/material.dart';

void main() => runApp(FotoApp());

class FotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi ejemplo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity, //finvisualdensity
      ), //fin theme
      home: PaginaInicio(),
    ); //fin del returnmaterialapp
  } //finbuildFotoapp
} //finclasefoto

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bordes de la app de Garcia"),
        centerTitle: true,
      ), //fin appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.green[200],
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Garcia Felix',
                    style: TextStyle(fontSize: 18),
                  ),
                ), //fin child center
              ), //fin de el container nombre
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/Felixgar/Mis_imagenes/main/186094592_1127383354332073_5274441596321132141_n.jpg"), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.purple[300],
                      width: 5.0,
                    ),
                  ),
                ), //fin de el decoration box
              ), //fin de el container foto
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purple,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //fin de el container del texto del grupo
            ], //fin del children
          ), //fin de la columna child
        ), //fin del bodycenter
      ), //finsinglechild
    ); //fin scaffold
  } //fin build widget pagina de inicio
} //fin clase pagina de inicio
