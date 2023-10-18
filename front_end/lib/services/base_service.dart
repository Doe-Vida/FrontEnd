import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:front_end/models/base_result.dart';
import 'package:front_end/models/login.dart';

import 'package:http/http.dart' as http;

class LoginService
{
   String uri = "https://doevida.onrender.com/login";

   Future<BaseResult> login(LoginModel login) async 
   {
      final url = Uri.parse(uri);

      final headers = <String, String>
      {
        'Content-Type': 'application/json',
      };

      final body = jsonEncode(
        {
            "username": "${login.username}",
            "password": "${login.password}"
        }
      );

      final response = await http.post(url, headers: headers, body: body);
      print(response.body);

      if (response.statusCode == 200) 
      {
          final responseData = jsonDecode(response.body);

          // Aqui você deve criar uma instância de BaseResult com base nos dados da resposta.
          // Vou supor que sua classe BaseResult tem um construtor apropriado.

          final baseResult = BaseResult(
            // Suponha que os dados que você deseja extrair da resposta estejam no campo "data".
            data: responseData["data"],
            // Outros campos do BaseResult, se houver.
          );

          print(baseResult.data);

          return baseResult;
    } 
    else 
    {
      // Se a solicitação não retornar o status 200, você pode tratar erros aqui.
      throw Exception('Erro na solicitação: ${response.statusCode}');
    }
  }
}

