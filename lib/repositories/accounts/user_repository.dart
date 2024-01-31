import 'package:dio/dio.dart';
import 'package:api_test/models/accounts/user.dart';

class UserRepository {
  final Dio _dio = Dio();
  final String apiUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> getUsers() async {
    try {
      final response = await _dio.get(apiUrl);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        final List<User> users = data.map((user) => User.fromJson(user)).toList();
        return users;
      } else {
        throw Exception('Failed to load users');
      }
    } catch (error) {
      throw Exception('Error: $error');
    }
  }
}
