import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient {
  Future<Response> get<T>(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Response(
          data: jsonDecode(response.body), statusCode: response.statusCode);
    } else {
      return Response(data: response.body, statusCode: response.statusCode);
    }
  }

  Future<Response> post<T>(
      {required String url, Map<String, String>? headers, Object? body}) async {
    final response =
        await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
      return Response(
          data: jsonDecode(response.body), statusCode: response.statusCode);
    } else {
      return Response(data: response.body, statusCode: response.statusCode);
    }
  }
}

class Response {
  final dynamic data;
  final int statusCode;

  Response({required this.data, required this.statusCode});

  isSuccess() {
    return statusCode == 200;
  }
}
