import 'package:movieapp/data/remote/model/categories.dart';
import 'package:movieapp/data/remote/model/movie_list_response.dart';

abstract class IMovieRespository {
  Future<MoviesResponse> fetchMovieByCategory(Category category, int page);
}
