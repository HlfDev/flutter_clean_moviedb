import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';

class GenreModel extends GenreEntity {
  const GenreModel({required id, required name})
      : super(
          id: id,
          name: name,
        );

  factory GenreModel.fromJson(Map<String, dynamic> json) => GenreModel(
        id: json['id'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
