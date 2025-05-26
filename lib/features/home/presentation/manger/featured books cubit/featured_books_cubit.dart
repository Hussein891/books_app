import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/model/book_model/book_model.dart';
import 'package:books_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedbooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (l) => emit(FeaturedbooksFailure(errMassagel: l.errMassage)),
      (r) => emit(FeaturedbooksSuccess(books: [])),
    );
  }
}
