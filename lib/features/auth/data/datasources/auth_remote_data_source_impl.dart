import 'package:firstapp/core/error/exceptions.dart';
import 'package:firstapp/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:firstapp/features/auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<UserModel> loginWithEmailPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<UserModel> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final respons = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {
          'name': name,
        },
      );
      if (respons.user == null) {
        throw ServerException('User is Null');
      }
      return UserModel.fromJson(respons.user!.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
