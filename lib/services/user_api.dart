import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user_model.dart';

class UserApi {
  static const _baseUrl = 'http://192.168.15.105:3000';

  static Future<List<UserModel>> getUsers() async {
    final response = await http.get(Uri.parse('$_baseUrl/users'));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List<dynamic>;
      final userList = jsonList.map((e) => UserModel.fromJson(e)).toList();
      return userList;
    } else {
      throw Exception('Failed to get the list of users.');
    }
  }

  static Future<void> addUser(UserModel user) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/users'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to add user');
    }
  }

  static Future<void> removeUser(UserModel user) async {
    final response = await http.delete(Uri.parse('$_baseUrl/users/${user.id}'));
    if (response.statusCode != 200) {
      throw Exception('Failed to remove user');
    }
  }
}
