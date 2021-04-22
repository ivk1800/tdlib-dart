import '../tdapi.dart';

/// A photo message
class PushMessageContentPhoto extends PushMessageContent {
  PushMessageContentPhoto(
      {this.photo,
      required this.caption,
      required this.isSecret,
      required this.isPinned});

  /// [photo] Message content; may be null
  final Photo? photo;

  /// [caption] Photo caption
  final String caption;

  /// [isSecret] True, if the photo is secret
  final bool isSecret;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentPhoto';

  static PushMessageContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPhoto(
        photo: Photo.fromJson(json['photo']),
        caption: json['caption'],
        isSecret: json['is_secret'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'photo': this.photo?.toJson(),
        'caption': this.caption,
        'is_secret': this.isSecret,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };
}
