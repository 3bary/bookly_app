part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}
class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel>? books;

  SimilarBooksSuccess(this.books);
}
class SimilarBooksFailure extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFailure(this.errorMessage);
}
class SimilarBooksLoading extends SimilarBooksState {}
