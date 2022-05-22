import 'package:hrm_new/repository/auth_repository/callback_abstraction/authInterface.dart';
import 'package:hrm_new/repository/auth_repository/model/user/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

const pref_token = "token";
const pref_user_name = "user_name";
const pref_name = "name";
const pref_email = "email";

class AuthRepositoryImpl implements AuthRepositoryInterface {
  @override
  Future<void> clearAllData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Future<String?> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(pref_token);
  }

  @override
  Future<User> getUserInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var name = sharedPreferences.getString(pref_user_name);
    var userName = sharedPreferences.getString(pref_user_name);
    var email = sharedPreferences.getString(pref_email);
    var user = User.basicInfo(name: name, userid: userName, email: email);
    return user;
  }

  @override
  Future<void> saveUserInfo(User user) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(pref_name,user.name!);
    sharedPreferences.setString(pref_user_name,user.userid!);
    sharedPreferences.setString(pref_email,user.email!);
  }
}
