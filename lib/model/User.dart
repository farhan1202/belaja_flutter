import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  static Future<User> getUserFromAPI(int id) async {
    String apiUrl = "https://reqres.in/api/users/" + id.toString();

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.fromJson(userData);
  }
}

class UninitializedUser extends User {}
