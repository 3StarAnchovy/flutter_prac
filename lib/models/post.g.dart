// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
  id: (json['id'] as num).toInt(),
  image: json['image'] as String,
  likes: (json['likes'] as num).toInt(),
  date: json['date'] as String,
  content: json['content'] as String,
  liked: json['liked'] as bool,
  user: json['user'] as String,
);

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
  'id': instance.id,
  'image': instance.image,
  'likes': instance.likes,
  'date': instance.date,
  'content': instance.content,
  'liked': instance.liked,
  'user': instance.user,
};
