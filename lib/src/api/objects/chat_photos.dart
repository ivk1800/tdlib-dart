import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of chat or user profile photos
@immutable
class ChatPhotos extends TdObject {
  const ChatPhotos({
    required this.totalCount,
    required this.photos,
  });

  /// [totalCount] Total number of photos
  final int totalCount;

  /// [photos] List of photos
  final List<ChatPhoto> photos;

  static const String constructor = 'chatPhotos';

  static ChatPhotos? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhotos(
      totalCount: json['total_count'],
      photos: List<ChatPhoto>.from((json['photos'] ?? [])
          .map((item) => ChatPhoto.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'total_count': totalCount,
        'photos': photos.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
