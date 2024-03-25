import 'package:firstapp/core/error/failures.dart';
import 'package:firstapp/core/usecase/usecase.dart';
import 'package:firstapp/features/blog/domain/entities/blog.dart';
import 'package:firstapp/features/blog/domain/repository/blog_repository.dart';
import 'package:fpdart/src/either.dart';

class GetAllBlogs implements UseCase<List<Blog>, NoParams> {
  final BlogRepository blogRepository;
  GetAllBlogs(this.blogRepository);
  @override
  Future<Either<Failure, List<Blog>>> call(NoParams params) {
    return blogRepository.getAllBlogs();
  }
}
