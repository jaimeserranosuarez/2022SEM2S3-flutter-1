import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newnoticias/models/articulo.model.dart';

class ArticuloProvider{
  Future<List<ArticuloModel>> obtenerArticulos() async {

    List<ArticuloModel> articulos = [];
    var client = http.Client();

    try{
    Map<String,String> parametros = {
      'q':'tesla',
      'from':'2022-08-17',
      'sortBy':'publishedAt',
      'apiKey':'e31cddbe28614271bd495983214b5e2a'
      };
    
    var response = await http.get(Uri.https('newsapi.org', 'v2/everything', parametros));
    print(response.body.toString());

    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    decodedResponse['articles'].forEach((item) => articulos.add(ArticuloModel.fromJson(item)));
    
    return articulos;

    } finally{client.close(); }
  }
}