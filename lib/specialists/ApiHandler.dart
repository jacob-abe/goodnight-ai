import 'dart:convert';

import 'package:goodnight_ai/specialists/AuthHandler.dart';
import 'package:http/http.dart' as http;

class APIHandler {
  static const String _baseUrl = 'https://api.example.com';

  static Future<http.Response> get(String endpoint) async {
    AuthHandler authHandler = AuthHandler();
    var accessToken = authHandler.getAccessToken();

    http.Response response = await http.get(
      (_baseUrl + endpoint) as Uri,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    );

    return response;
  }

  static Future<http.Response> post(String endpoint, dynamic body) async {
    AuthHandler authHandler = AuthHandler();
    var accessToken = authHandler.getAccessToken();

    http.Response response = await http.post(
      (_baseUrl + endpoint) as Uri,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
      body: json.encode(body),
    );

    return response;
  }
}