import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> _users = [];
  bool isFetchingUsers = false;

  List<UserModel> get users => _users;

  Future<void> fetchUsers() async {
    if (isFetchingUsers) {
      return;
    }

    isFetchingUsers = true;

    try {
      final response =
          await http.get(Uri.parse('http://192.168.15.105:3000/users'));

      if (response.statusCode == 200) {
        final dataJson = json.decode(response.body);
        _users = (dataJson as List<dynamic>)
            .map((userData) => UserModel.fromJson(userData))
            .toList();

        notifyListeners();
      } else {
        throw Exception('Failed to fetch users');
      }
    } catch (e) {
      throw Exception('Failed to fetch users: $e');
    } finally {
      isFetchingUsers = false;
    }
  }

  Future<void> addUser(UserModel user) async {
    _users.add(user);
    notifyListeners();
  }

  Future<void> removeUser(UserModel user) async {
    _users.remove(user);
    notifyListeners();
  }

  void removeUserLocally(UserModel user) {
    _users.removeWhere((u) => u.id == user.id);
    notifyListeners();
  }
}
