import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:user_articles/domain/models/article_model.dart';

part 'author_model.g.dart';

@JsonSerializable()
class AuthorModel {
  const AuthorModel({
    required this.id,
    required this.picture,
    required this.firstName,
    required this.lastName,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'picture')
  final String picture;

  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  String get name {
    return '$firstName $lastName';
  }

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorModelToJson(this);

  // AuthorModel.fromJson(Map<String, dynamic> json)
  //     : id = json['id'],
  //       picture = json['picture'],
  //       firstName = json['first_name'],
  //       lastName = json['last_name'];
}
