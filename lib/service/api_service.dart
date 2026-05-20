import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  late String url;
  ApiService(this.url);
  Future<dynamic> pull({required String endPoint}) async {
    http.Response response = await http.get(Uri.parse(url+endPoint));

    if(response.statusCode == 200){
      return compute(jsonDecode,response.body);
  }
}
  Future<dynamic> push({required String endPoint,String method = "POST",required Map<String,dynamic> body}) async {
    switch(method){
      case "POST":
        http.Response response = await http.post(Uri.parse(url+endPoint),body: body);
        if(response.statusCode == 200){
          return compute(jsonDecode,response.body);
        }
        break;
        case "PUT":
        http.Response response = await http.put(Uri.parse(url+endPoint),body: body);
        if(response.statusCode == 200){
          return compute(jsonDecode,response.body);
        }
        break;
        case "DELETE":
        http.Response response = await http.delete(Uri.parse(url+endPoint),body: body);
        if(response.statusCode == 200){
          return compute(jsonDecode,response.body);
        }
        break;
        default:
          return null;
    }

  }

}