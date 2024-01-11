class MovieModel {
  final String original_title, overview, poster_path, country, release_date;
  final int id, run_time;
  final double rating;
  final List genre;

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        original_title: json['original_title'],
        overview: json['overview'],
        poster_path: json['poster_path'],
        id: json['id'],
        country: json['production_companies'][0]['origin_country'],
        release_date: json['release_date'],
        run_time: json['runtime'],
        genre: json['genres'],
        rating: json['vote_average']);
  }

  MovieModel(
      {required this.original_title,
      required this.overview,
      required this.poster_path,
      required this.country,
      required this.release_date,
      required this.id,
      required this.run_time,
      required this.rating,
      required this.genre});
}
