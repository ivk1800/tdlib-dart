import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo message
@immutable
class PushMessageContentPhoto extends PushMessageContent {
  const PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });

  /// [photo] Message content; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final String caption;

  /// [isSecret] True, if the photo is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPhoto';

  static PushMessageContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPhoto(
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      caption: json['caption'] as String,
      isSecret: json['is_secret'] as bool,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo?.toJson(),
        'caption': caption,
        'is_secret': isSecret,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
