import 'package:api_test/models/accounts/user.dart';
import 'package:api_test/repositories/accounts/user_repository.dart';

class UserScreenNotifier {
  final UserRepository _userRepository;

  UserScreenNotifier(this._userRepository);

  Future<List<User>> getUsers() async {
    try {
      return await _userRepository.getUsers();
    } catch (error) {
      // エラーハンドリング
      throw Exception('Error: $error');
    }
  }
}
