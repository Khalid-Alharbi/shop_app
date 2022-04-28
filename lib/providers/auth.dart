import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  late String _token;
  late DateTime _expiryDate;
  late String _userId;

  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    final url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyARziOwmU9lcvQIWYlSbXJcD6A9N96OzbU');
    final response = await http.post(
      url,
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(jsonDecode(response.body));
  }

  Future<void> singIn(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }

  Future<void> singUp(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }
}
