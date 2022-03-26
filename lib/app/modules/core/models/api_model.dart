import 'dart:convert';

class ApiModel {
  String id;
  String name;
  String userName;

  ApiModel({
    required this.id,
    required this.name,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'useName': userName,
    };
  }

  factory ApiModel.fromMap(Map<String, dynamic> map) {
    return ApiModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      userName: map['userName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiModel.fromJson(String source) =>
      ApiModel.fromMap(json.decode(source));
}
