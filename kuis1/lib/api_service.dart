import 'dart:convert';
import 'package:http/http.dart';

class ApiService {
  static const String baseUrl ="https://fakestoreapi.com/products";
}

  if (response.statusCode =200){
    final data = json.decode(response.body);
    return List<Map<String, dynamic>> .from(data['results']);
  }else{
    return [];

  }

  

  
