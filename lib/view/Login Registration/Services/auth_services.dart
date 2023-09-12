import 'dart:convert';
import 'globals.dart';
import 'package:http/http.dart' as http;

class AuthService{
  static Future<http.Response> register(
        String firstname, String lastname, String email, String phonenumber, String password) async {
    Map data= {
      "firstname" : firstname,
      "lastname" : lastname,
      "email" : email,
      "password" : password,
      "phonenumber" : phonenumber,
    } ;
    var body = json.encode(data);
    var url = Uri.parse(baseURL+'auth/register');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> login(String email, String password) async {
    Map data= {
      "email" : email,
      "password" : password,
    } ;
    var body = json.encode(data);
    var url = Uri.parse(baseURL+'auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}
