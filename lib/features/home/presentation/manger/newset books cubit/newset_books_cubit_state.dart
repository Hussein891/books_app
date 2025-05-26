part of 'newset_books_cubit_cubit.dart';

sealed class NewsetBooksCubitState extends Equatable {
  const NewsetBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksCubitInitial extends NewsetBooksCubitState {}

final class NewsetBooksCubitLoading extends NewsetBooksCubitState {}

final class NewsetBooksCubitSuccess extends NewsetBooksCubitState {
  final List<BookModel> books;

  const NewsetBooksCubitSuccess({required this.books});
}

final class NewsetBooksCubitFailure extends NewsetBooksCubitState {
  final String errMessag;

  const NewsetBooksCubitFailure(this.errMessag);
}
