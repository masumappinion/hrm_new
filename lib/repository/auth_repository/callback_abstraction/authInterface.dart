
import 'package:hrm_new/repository/auth_repository/model/user/user.dart';

abstract class AuthRepositoryInterface{

  Future<String?> getToken();
  Future<void> clearAllData();
  Future<void> saveUserInfo(User user);
  Future<User> getUserInfo();

}