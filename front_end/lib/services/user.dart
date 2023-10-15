import 'dart:convert';

import '../models/user.dart';
import 'package:http/http.dart' as http;

class UserService {
  String uri = 'https://doevida.onrender.com/users/usuario';
  late UserModel userModel;

  //Future<UserModel> getUser(String email) async {
  Future<String> getUser(String email) async 
  {
    try 
    {
      final url = Uri.parse(uri);
      final headers = <String, String>
      {
        'Content-Type': 'application/json',
        //'Authorization': 'Bearer $openAIAPIKEY',
      };

      final body = jsonEncode
      ({
        "model": "gpt-3.5-turbo",
        "messages": [
          {
            'role': 'user',
            'content':
                'Does this message want to generate an AI picture, image, art or anything similar?',
          }
        ],
      });

      final response = await http.post(url, headers: headers, body: body);

      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) 
      {
        String content =
            jsonDecode(response.body)['choices'][0]['message']['content'];

      }

      return '';

    } catch (e) 
    {
      print(e.toString());
      return '';
    }
  }
}
