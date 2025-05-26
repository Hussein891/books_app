import 'package:bloc/bloc.dart';
import 'package:books_app/features/home/data/model/book_model/book_model.dart';
import 'package:books_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubitCubit extends Cubit<NewsetBooksCubitState> {
  NewsetBooksCubitCubit(this.homeRepo) : super(NewsetBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksCubitLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (l) => emit(NewsetBooksCubitFailure(l.errMassage)),
      (r) => emit(NewsetBooksCubitSuccess(books: [])),
    );
  }
}
