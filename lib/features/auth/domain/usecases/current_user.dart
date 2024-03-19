import 'package:firstapp/core/common/entities/user.dart';
import 'package:firstapp/core/error/failures.dart';
import 'package:firstapp/core/usecase/usecase.dart';
import 'package:firstapp/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/src/either.dart';

class CurrentUser implements UseCase<User, NoParams> {
  final AuthRepository authRepository;
  CurrentUser(this.authRepository);
  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await authRepository.crrentUser();
  }
}
