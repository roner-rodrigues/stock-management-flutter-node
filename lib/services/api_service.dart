import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<http.Response> fetchTpt900() {
    return http.get(Uri.parse('$baseUrl/tpt900'));
  }
}
