import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  late String _token;
  late DateTime _expiryDate;
  late String _userId;

  Future<void> singUp(String email, String password) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyARziOwmU9lcvQIWYlSbXJcD6A9N96OzbU');
    final response = await http.post(
      url,
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
  }
}
