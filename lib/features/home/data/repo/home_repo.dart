import 'package:books_app/core/errors/falilures.dart';
import 'package:books_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<List<BookModel>> fetchFeaturedBooks();
}
