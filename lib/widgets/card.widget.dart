import 'package:flutter/material.dart';
import 'package:newnoticias/models/articulo.model.dart';
import 'package:newnoticias/pages/details.page.dart';

class Cardwidget extends StatelessWidget {
  Cardwidget({super.key, required this.articulo});
  ArticuloModel articulo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(articulo: articulo)));
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 100,
          color: Colors.red,
          child: Column(children: [
            Text(articulo.author),
            Text(articulo.content)
          ]),
        )),
    );
  }
}