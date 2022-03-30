import 'dart:convert';
import 'package:http/http.dart';
class CreateUser {
  String? email;
  String? password;
  String url = "https://api.ichazy.com/index.php?action=customer-signup";

  CreateUser({this.email, this.password});

  Future<void> saveUser() async {
    Uri uri =
        Uri(path:url); //+ "&email=" + this.email ? this.email : '' + '' + "&password=" + this.password;
    try {
      Response response = await get(uri);
      Map data = jsonDecode(response.body);
      print(data);
    } catch (e) {
      print('exception');
      print(e);
    }
  }
}
