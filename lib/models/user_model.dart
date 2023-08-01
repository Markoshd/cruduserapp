class UserModel {
  final int? id;
  final String name;
  final String email;
  final int age;

  UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.age,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      age: _parseAge(json['age']),
    );
  }

  static int _parseAge(dynamic age) {
    if (age is int) {
      return age;
    } else if (age is String) {
      return int.tryParse(age) ?? 0;
    } else {
      return 0;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'age': age,
    };
  }
}
