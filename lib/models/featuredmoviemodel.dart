class FeaturedMovieModel {
  final String original_title, overview, poster_path, release_date;
  final int id;
  final double rating;

  factory FeaturedMovieModel.fromJson(Map<String, dynamic> json) {
    return FeaturedMovieModel(
        original_title: json['original_title'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        id: json['id'],
        // country: json['production_companies'][0]['origin_country'],
        release_date: json['release_date'],
        // run_time: json['runtime'],
        // genre: json['genres'],
        rating: json['vote_average']);
  }

  FeaturedMovieModel({
    required this.original_title,
    required this.overview,
    required this.poster_path,
    required this.release_date,
    required this.id,
    required this.rating,
  });
}
