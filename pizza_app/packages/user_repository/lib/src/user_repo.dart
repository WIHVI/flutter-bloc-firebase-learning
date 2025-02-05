import 'models/models.dart';

abstract class UserRepository {
  Stream<UserModel> get user;

  Future<void> signIn(String email, String password);

  Future<UserModel> signUp(UserModel userModel, String password);

  Future<void> signOut();

  Future<void> setUserData(UserModel userModel);
}
