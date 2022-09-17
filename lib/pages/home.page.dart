import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newnoticias/providers/articulos.provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ArticuloProvider articuloProvider = ArticuloProvider();

  @override
  void initState() {
    var respuesta = articuloProvider.obtenerArticulos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Noticias")),
      //body: ,
    );
  }
}