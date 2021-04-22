import '../tdapi.dart';

/// Describes a chat or user profile photo
class ChatPhoto extends TdObject {
  ChatPhoto(
      {required this.id,
      required this.addedDate,
      this.minithumbnail,
      required this.sizes,
      this.animation});

  /// [id] Unique photo identifier
  final int id;

  /// [addedDate] Point in time (Unix timestamp) when the photo has been added
  final int addedDate;

  /// [minithumbnail] Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo in JPEG format, in different size
  final List<PhotoSize> sizes;

  /// [animation] Animated variant of the photo in MPEG4 format; may be null
  final AnimatedChatPhoto? animation;

  static const String CONSTRUCTOR = 'chatPhoto';

  static ChatPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatPhoto(
        id: int.tryParse(json['id']) ?? 0,
        addedDate: json['added_date'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        sizes: List<PhotoSize>.from((json['sizes'] ?? [])
            .map((item) => PhotoSize.fromJson(item))
            .toList()),
        animation: AnimatedChatPhoto.fromJson(json['animation']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'added_date': this.addedDate,
        'minithumbnail': this.minithumbnail?.toJson(),
        'sizes': sizes.map((item) => item.toJson()).toList(),
        'animation': this.animation?.toJson(),
        '@type': CONSTRUCTOR
      };
}
