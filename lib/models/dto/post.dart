import 'package:json_annotation/json_annotation.dart';

// 생성될 파일과 연결 (아직 존재하지 않지만 build_runner가 생성할 예정)
part 'post.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final String image;
  final int likes;
  final String date;
  final String content;
  final bool liked;
  final String user;

  Post({
    required this.id,
    required this.image,
    required this.likes,
    required this.date,
    required this.content,
    required this.liked,
    required this.user,
  });

  // JSON → Post 객체 (자동 생성된 함수 호출)
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  // Post 객체 → JSON (자동 생성된 함수 호출)
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
